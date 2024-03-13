package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.Register.Arch;
import gen.asm.AssemblyProgram.Section;

/**
 * Generates code to evaluate an expression and return the result in a register.
 */
public class ExprCodeGen extends CodeGen {

    public ExprCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public Register visit(Expr e) {

        return switch (e) {

            case BinOp bo -> {
                Section currSection = asmProg.getCurrentSection();
                Register leftRegister = visit(bo.leftOperand);
                Register rightRegister = visit(bo.rightOperand);
                Register resultRegister = Register.Virtual.create();
                switch (bo.op) {
                    case ADD:
                        currSection.emit(OpCode.ADD, resultRegister, leftRegister, rightRegister);
                        break;
                    case AND:
                        currSection.emit(OpCode.AND, resultRegister, leftRegister, rightRegister);
                        break;
                    case DIV:
                        currSection.emit(OpCode.DIV, leftRegister, rightRegister);
                        currSection.emit(OpCode.MFLO, resultRegister);
                        break;
                    case EQ:
                        currSection.emit(OpCode.XOR, resultRegister, leftRegister, rightRegister);
                        currSection.emit(OpCode.SLTIU, resultRegister, resultRegister, 1);
                        break;
                    case GE:
                        currSection.emit(OpCode.SLT, resultRegister, leftRegister, rightRegister);
                        currSection.emit(OpCode.SLTIU, resultRegister, resultRegister, 1);
                        break;
                    case GT:
                        currSection.emit(OpCode.SLT, resultRegister, rightRegister, leftRegister);
                        break;
                    case LE:
                        currSection.emit(OpCode.SLT, resultRegister, rightRegister, leftRegister);
                        currSection.emit(OpCode.SLTIU, resultRegister, resultRegister, 1);
                        break;
                    case LT:
                        currSection.emit(OpCode.SLT, resultRegister, leftRegister, rightRegister);
                        break;
                    case MOD:
                        currSection.emit(OpCode.DIV, leftRegister, rightRegister);
                        currSection.emit(OpCode.MFHI, resultRegister);
                        break;
                    case MUL:
                        currSection.emit(OpCode.MUL, resultRegister, leftRegister, rightRegister);
                        break;
                    case NE:
                        currSection.emit(OpCode.XOR, resultRegister, leftRegister, rightRegister);
                        currSection.emit(OpCode.SLTU, resultRegister, Register.Arch.zero, resultRegister);
                        break;
                    case OR:
                        currSection.emit(OpCode.OR, resultRegister, leftRegister, rightRegister);
                        break;
                    case SUB:
                        currSection.emit(OpCode.SUB, resultRegister, leftRegister, rightRegister);
                        break;
                    default:
                        break;
                }

                yield resultRegister;
            }
            case FunCallExpr fce -> {
                switch (fce.name) {
                    case "print_i":
                        Section currSection = asmProg.getCurrentSection();
                        currSection.emit(OpCode.LI, Arch.v0, 1);
                        currSection.emit(OpCode.ADDI, Arch.a0, Arch.zero, ((IntLiteral) fce.args.get(0)).value);
                        currSection.emit(OpCode.SYSCALL);
                    default:
                        break;
                }

                yield null;
            }
            case VarExpr ve -> {
                if (ve.vd.globalLabel != null) {
                    Section currSection = asmProg.getCurrentSection();
                    Register addr = Register.Virtual.create();
                    Register dst = Register.Virtual.create();
                    currSection.emit(OpCode.LA, addr, ve.vd.globalLabel);
                    currSection.emit(OpCode.LW, dst, addr, 0);

                    yield dst;
                }

                yield null;
            }
            case StrLiteral sl -> {
                Section currSection = asmProg.getCurrentSection();
                Register addr = Register.Virtual.create();
                currSection.emit(OpCode.LA, addr, sl.label);
                yield addr;
            }
            default -> {

                yield null;
            }
        };
    }
}
