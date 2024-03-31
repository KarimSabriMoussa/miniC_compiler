package gen;

import ast.*;
import gen.asm.*;
import gen.asm.AssemblyProgram.*;

public class MinicStdLibFunctionGen extends CodeGen {

    public MinicStdLibFunctionGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public Register visit(ASTNode n) {
        return switch (n) {
            case null -> {
                throw new IllegalStateException("Unexpected null value");
            }
            case FunCallExpr fce -> {

                switch (fce.name) {
                    case "print_i" -> {
                        Section currSection = asmProg.getCurrentSection();
                        Register arg = (new ExprCodeGen(asmProg)).visit(fce.args.get(0));
                        currSection.emit(OpCode.LI, Register.Arch.v0, 1);
                        currSection.emit(OpCode.ADD, Register.Arch.a0, Register.Arch.zero, arg);
                        currSection.emit(OpCode.SYSCALL);
                        yield arg;
                    }
                    case "print_c" -> {
                        Section currSection = asmProg.getCurrentSection();
                        Register arg = (new ExprCodeGen(asmProg)).visit(fce.args.get(0));
                        currSection.emit(OpCode.LI, Register.Arch.v0, 11);
                        currSection.emit(OpCode.ADD, Register.Arch.a0, Register.Arch.zero, arg);
                        currSection.emit(OpCode.SYSCALL);
                        yield arg;
                    }
                    case "print_s" -> {
                        Section currSection = asmProg.getCurrentSection();
                        Register arg = (new ExprCodeGen(asmProg)).visit(fce.args.get(0));
                        currSection.emit(OpCode.LI, Register.Arch.v0, 4);
                        currSection.emit(OpCode.ADD, Register.Arch.a0, Register.Arch.zero, arg);
                        currSection.emit(OpCode.SYSCALL);
                        yield arg;
                    }
                    case "read_i" -> {
                        Section currSection = asmProg.getCurrentSection();
                        Register returnValue = Register.Virtual.create();
                        currSection.emit(OpCode.LI, Register.Arch.v0, 5);
                        currSection.emit(OpCode.SYSCALL);
                        currSection.emit(OpCode.ADD, returnValue, Register.Arch.v0, Register.Arch.zero);

                        yield returnValue;
                    }
                    case "read_c" -> {
                        Section currSection = asmProg.getCurrentSection();
                        Register returnValue = Register.Virtual.create();
                        currSection.emit(OpCode.LI, Register.Arch.v0, 12);
                        currSection.emit(OpCode.SYSCALL);
                        currSection.emit(OpCode.ADD, returnValue, Register.Arch.v0, Register.Arch.zero);
                        yield returnValue;
                    }
                    case "mcmalloc" -> {
                        Section currSection = asmProg.getCurrentSection();
                        Register returnValue = Register.Virtual.create();
                        Register arg = (new ExprCodeGen(asmProg)).visit(fce.args.get(0));
                        currSection.emit(OpCode.LI, Register.Arch.v0, 9);
                        currSection.emit(OpCode.ADD, Register.Arch.a0, Register.Arch.zero, arg);
                        currSection.emit(OpCode.SYSCALL);
                        currSection.emit(OpCode.ADD, returnValue, Register.Arch.v0, Register.Arch.zero);
                        yield returnValue;
                    }
                    default -> {
                        yield null;
                    }
                }

            }
            default -> {
                yield null;
            }
        };
    }
}