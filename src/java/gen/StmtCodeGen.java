package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.Section;

public class StmtCodeGen extends CodeGen {

    private Label currLoopStart = null;
    private Label currLoopEnd = null;

    public StmtCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void visit(Stmt s) {
        switch (s) {
            case Block b -> {
                for (Stmt innerStmt : b.stmts) {
                    visit(innerStmt);
                }
            }
            case Break b -> {
                if (currLoopEnd != null) {
                    Section currSection = asmProg.getCurrentSection();
                    currSection.emit(OpCode.B, currLoopEnd);
                }
            }
            case Continue c -> {
                if (currLoopStart != null) {
                    Section currSection = asmProg.getCurrentSection();
                    currSection.emit(OpCode.B, currLoopStart);
                }
            }
            case ExprStmt es -> {
                (new ExprCodeGen(asmProg)).visit(es.expr);
            }
            case If i -> {
                Section currSection = asmProg.getCurrentSection();
                Register condition = (new ExprCodeGen(asmProg)).visit(i.condition);
                Label elseLabel = Label.create("elseLabel");
                Label endLabel = Label.create("endLabel");



                currSection.emit("check if condition is true, branch to else if false");
                currSection.emit(OpCode.BEQ, condition, Register.Arch.zero, elseLabel);
                visit(i.stmt);
                
                currSection.emit(OpCode.B, endLabel);
                
                currSection.emit("else branch");
                currSection.emit(elseLabel);
                if (i.elseStmt != null) {
                    visit(i.elseStmt);
                }
                currSection.emit(endLabel);
            }
            case While w -> {

                Section currSection = asmProg.getCurrentSection();
                Register condition;
                Label loop = Label.create("loop");
                Label endLabel = Label.create("endLabel");

                Label prevLoopStart = currLoopStart;
                Label prevLoopEnd = currLoopEnd;

                currLoopStart = loop;
                currLoopEnd = endLabel;

                currSection.emit(loop);
                condition = (new ExprCodeGen(asmProg)).visit(w.condition);

                
                currSection.emit("check if condition is true, branch to end if false");
                currSection.emit(OpCode.BEQ, condition, Register.Arch.zero, endLabel);
                visit(w.stmt);
                
                currSection.emit("branch to start of loop to check condition");
                currSection.emit(OpCode.B, loop);
                currSection.emit(endLabel);

                currLoopStart = prevLoopStart;
                currLoopEnd = prevLoopEnd;

            }
            case Return r -> {

                Section currSection = asmProg.getCurrentSection();

                if (r.expr != null) {

                    
                    currSection.emit("computing the return value");
                    Register returnValueRegister = ((new ExprCodeGen(asmProg))).visit(r.expr);
                    
                    currSection.emit("copying the return value into the previous frame");
                    switch (r.fd.type) {
                        case BaseType.INT -> {
                            currSection.emit(OpCode.SW, returnValueRegister, Register.Arch.fp,
                                    r.fd.returnValueFpOffset);
                        }
                        case BaseType.CHAR -> {
                            currSection.emit(OpCode.SB, returnValueRegister, Register.Arch.fp,
                                    r.fd.returnValueFpOffset);
                        }
                        case PointerType pt -> {
                            currSection.emit(OpCode.SW, returnValueRegister, Register.Arch.fp,
                                    r.fd.returnValueFpOffset);
                        }
                        case ArrayType at -> {
                            currSection.emit(OpCode.SW, returnValueRegister, Register.Arch.fp,
                                    r.fd.returnValueFpOffset);
                        }
                        case StructType st -> {
                            for (int i = 0; i < st.std.size; i += 4) {
                                Register word = Register.Virtual.create();
                                currSection.emit(OpCode.LW, word, returnValueRegister, i);
                                currSection.emit(OpCode.SW, word, Register.Arch.fp, i + r.fd.returnValueFpOffset);
                            }
                        }
                        default -> {

                        }
                    }
                }

                currSection.emit("branching to the return label");
                currSection.emit(OpCode.B,r.fd.returnLabel);

            }
        }
    }
}
