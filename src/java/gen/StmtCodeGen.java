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
                ExprCodeGen ecd = new ExprCodeGen(asmProg);
                ecd.visit(es.expr);
            }
            case If i -> {
                Section currSection = asmProg.getCurrentSection();
                ExprCodeGen ecd = new ExprCodeGen(asmProg);
                Register condition = ecd.visit(i.condition);
                Label elseLabel = Label.create();
                Label endLabel = Label.create();

                currSection.emit(OpCode.BEQ, condition, Register.Arch.zero, elseLabel);
                visit(i.stmt);
                currSection.emit(OpCode.B, endLabel);
                currSection.emit(elseLabel);
                if (i.elseStmt != null) {
                    visit(i.elseStmt);
                }
                currSection.emit(endLabel);
            }
            case While w -> {

                Section currSection = asmProg.getCurrentSection();
                ExprCodeGen ecd = new ExprCodeGen(asmProg);
                Register condition;
                Label loop = Label.create();
                Label endLabel = Label.create();

                Label prevLoopStart = currLoopStart;
                Label prevLoopEnd = currLoopEnd;

                currLoopStart = loop;
                currLoopEnd = endLabel;

                currSection.emit(loop);
                condition = ecd.visit(w.condition);
                currSection.emit(OpCode.BEQ, condition, Register.Arch.zero, endLabel);
                visit(w.stmt);
                currSection.emit(OpCode.B, loop);
                currSection.emit(endLabel);

                currLoopStart = prevLoopStart;
                currLoopEnd = prevLoopEnd;

            }
            case Stmt st -> {

            }
        }
    }
}
