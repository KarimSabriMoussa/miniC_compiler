package gen;

import ast.*;
import gen.asm.*;
import gen.asm.AssemblyProgram.*;
import java.util.Set;

/**
 * Generates code to evaluate an expression and return the result in a register.
 */
public class ExprCodeGen extends CodeGen {

    private Set<String> minicStdLibFunctions = Set.of("print_i", "print_c", "print_s", "read_i", "read_c",
            "mcmalloc");

    public ExprCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public Register visit(Expr e) {

        return switch (e) {
            case AddressOfExpr aoe -> {

                Register addr = (new AddrCodeGen(asmProg)).visit(aoe.expr);
                yield addr;
            }
            case Assign a -> {

                Register addr = (new AddrCodeGen(asmProg)).visit(a.variable);
                Register value = visit(a.value);

                Section currSection = asmProg.getCurrentSection();

                switch (a.variable.type) {
                    case BaseType.INT -> {
                        currSection.emit(OpCode.SW, value, addr, 0);
                    }
                    case BaseType.CHAR -> {
                        currSection.emit(OpCode.SB, value, addr, 0);
                    }
                    case StructType st1 -> {
                        switch (a.value.type) {
                            case StructType st2 -> {
                                for (int i = 0; i < st1.std.size; i += 4) {
                                    Register word = Register.Virtual.create();
                                    currSection.emit(OpCode.LW, word, value, i);
                                    currSection.emit(OpCode.SW, word, addr, i);
                                }
                            }
                            default -> {

                            }
                        }
                    }
                    case PointerType pt -> {
                        currSection.emit(OpCode.SW, value, addr, 0);
                    }
                    default -> {

                    }
                }

                yield value;
            }
            case ArrayAccessExpr aae -> {
                Section currSection = asmProg.getCurrentSection();
                Register addr = (new AddrCodeGen(asmProg)).visit(aae);
                Register result = Register.Virtual.create();

                switch (aae.type) {
                    case BaseType.INT -> {
                        currSection.emit(OpCode.LW, result, addr, 0);
                    }
                    case BaseType.CHAR -> {
                        currSection.emit(OpCode.LB, result, addr, 0);
                    }
                    case ArrayType at -> {
                        yield addr;
                    }
                    case PointerType pt -> {
                        currSection.emit(OpCode.LW, result, addr, 0);
                    }
                    default -> {

                    }
                }

                yield result;
            }
            case FieldAccessExpr fae -> {
                Section currSection = asmProg.getCurrentSection();
                Register result = Register.Virtual.create();
                Register addr = (new AddrCodeGen(asmProg)).visit(fae);

                VarDecl member = fae.getMember(fae.member);

                switch (member.type) {
                    case BaseType.INT -> {
                        currSection.emit(OpCode.LW, result, addr, 0);
                    }
                    case BaseType.CHAR -> {
                        currSection.emit(OpCode.LB, result, addr, 0);
                    }
                    case PointerType pt -> {
                        currSection.emit(OpCode.LW, result, addr, 0);
                    }
                    case ArrayType at -> {
                        currSection.emit(OpCode.ADDIU, result, addr, 0);
                    }
                    case StructType st -> {
                        currSection.emit(OpCode.ADDIU, result, addr, 0);
                    }
                    default -> {

                    }
                }

                yield result;

            }
            case SizeOfExpr soe -> {
                Section currSection = asmProg.getCurrentSection();
                Register resultRegister = Register.Virtual.create();
                currSection.emit(OpCode.LI, resultRegister, Type.getSize(soe.target_type));

                yield resultRegister;
            }
            case BinOp bo -> {
                Section currSection = asmProg.getCurrentSection();
                Register leftRegister;
                Register rightRegister;
                Register resultRegister = Register.Virtual.create();

                switch (bo.op) {
                    case AND:
                        Label falseLabel = Label.create();
                        Label endAND = Label.create();

                        leftRegister = visit(bo.leftOperand);
                        currSection.emit(OpCode.BEQZ, leftRegister, falseLabel);

                        rightRegister = visit(bo.rightOperand);
                        currSection.emit(OpCode.ADDIU, resultRegister, rightRegister, 0);
                        currSection.emit(OpCode.B, endAND);

                        currSection.emit(falseLabel);
                        currSection.emit(OpCode.LI, resultRegister, 0);

                        currSection.emit(endAND);

                        yield resultRegister;
                    case OR:
                        Label trueLabel = Label.create();
                        Label endOR = Label.create();

                        leftRegister = visit(bo.leftOperand);
                        currSection.emit(OpCode.BNEZ, leftRegister, trueLabel);

                        rightRegister = visit(bo.rightOperand);
                        currSection.emit(OpCode.BNEZ, rightRegister, trueLabel);
                        currSection.emit(OpCode.LI, resultRegister, 0);
                        currSection.emit(OpCode.B, endOR);

                        currSection.emit(trueLabel);
                        currSection.emit(OpCode.LI, resultRegister, 1);

                        currSection.emit(endOR);

                        yield resultRegister;
                    default:
                        break;
                }

                leftRegister = visit(bo.leftOperand);
                rightRegister = visit(bo.rightOperand);

                switch (bo.op) {
                    case ADD:
                        currSection.emit(OpCode.ADD, resultRegister, leftRegister, rightRegister);
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
                    case SUB:
                        currSection.emit(OpCode.SUB, resultRegister, leftRegister, rightRegister);
                        break;
                    default:
                        break;
                }

                yield resultRegister;
            }
            case FunCallExpr fce -> {
                if (minicStdLibFunctions.contains(fce.name)) {
                    yield (new MinicStdLibFunctionGen(asmProg)).visit(fce);
                }

                Section currSection = asmProg.getCurrentSection();
                Register returnValue = Register.Virtual.create();

                currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -fce.fd.argSegmentSize);

                currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);

                for (int i = 0; i < fce.args.size(); i++) {
                    Register argValue = visit(fce.args.get(i));
                    VarDecl param = fce.fd.params.get(i);
                    switch (param.type) {
                        case BaseType.INT -> {
                            currSection.emit(OpCode.SW, argValue, Register.Arch.sp, param.fpOffset);
                        }
                        case BaseType.CHAR -> {
                            currSection.emit(OpCode.SB, argValue, Register.Arch.sp, param.fpOffset);
                        }
                        case PointerType pt -> {
                            currSection.emit(OpCode.SW, argValue, Register.Arch.sp, param.fpOffset);
                        }
                        case ArrayType at -> {
                            currSection.emit(OpCode.SW, argValue, Register.Arch.sp, param.fpOffset);
                        }
                        case StructType st -> {
                            for (int j = 0; j < st.std.size; j += 4) {
                                Register word = Register.Virtual.create();
                                currSection.emit(OpCode.LW, word, argValue, j);
                                currSection.emit(OpCode.SW, word, Register.Arch.sp, param.fpOffset + j);
                            }
                        }
                        default -> {

                        }
                    }
                }

                currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, 4);

                currSection.emit(OpCode.JAL, fce.fd.label);

                switch (fce.fd.type) {
                    case BaseType.INT -> {
                        currSection.emit(OpCode.LW, returnValue, Register.Arch.sp, 0);
                    }
                    case BaseType.CHAR -> {
                        currSection.emit(OpCode.LB, returnValue, Register.Arch.sp, 0);
                    }
                    case ArrayType at -> {
                        currSection.emit(OpCode.LW, returnValue, Register.Arch.sp, 0);
                    }
                    case PointerType pt -> {
                        currSection.emit(OpCode.LW, returnValue, Register.Arch.sp, 0);
                    }
                    case StructType st -> {
                        currSection.emit(OpCode.ADDIU, returnValue, Register.Arch.sp, 0);
                    }
                    default -> {

                    }
                }

                currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, fce.fd.argSegmentSize);

                yield returnValue;
            }
            case VarExpr ve -> {
                Section currSection = asmProg.getCurrentSection();

                Register addr = (new AddrCodeGen(asmProg)).visit(ve);
                Register value = Register.Virtual.create();
                switch (ve.vd.type) {
                    case BaseType.INT -> {
                        currSection.emit(OpCode.LW, value, addr, 0);
                    }
                    case BaseType.CHAR -> {
                        currSection.emit(OpCode.LB, value, addr, 0);
                    }
                    case ArrayType at -> {
                        yield addr;
                    }
                    case PointerType pt -> {
                        currSection.emit(OpCode.LW, value, addr, 0);
                    }
                    case StructType st -> {
                        yield addr;
                    }
                    default -> {

                    }
                }

                yield value;

            }
            case ChrLiteral cl -> {
                Section currSection = asmProg.getCurrentSection();
                Register dst = Register.Virtual.create();
                currSection.emit(OpCode.LI, dst, cl.chr);
                yield dst;
            }
            case IntLiteral il -> {
                Section currSection = asmProg.getCurrentSection();
                Register dst = Register.Virtual.create();
                currSection.emit(OpCode.LI, dst, il.value);
                yield dst;
            }
            case StrLiteral sl -> {
                Section currSection = asmProg.getCurrentSection();
                Register addr = Register.Virtual.create();
                currSection.emit(OpCode.LA, addr, sl.label);
                yield addr;
            }
            case TypecastExpr tce -> {
                Register resultRegister = visit(tce.expr);
                yield resultRegister;
            }
            case ValueAtExpr vae -> {

                Section currSection = asmProg.getCurrentSection();
                Register addrPointedTo = (new AddrCodeGen(asmProg)).visit(vae);
                Register result = Register.Virtual.create();

                switch (vae.type) {
                    case BaseType.CHAR -> {
                        currSection.emit(OpCode.LB, result, addrPointedTo, 0);
                    }
                    case BaseType.INT -> {
                        currSection.emit(OpCode.LW, result, addrPointedTo, 0);
                    }
                    case PointerType pt -> {
                        currSection.emit(OpCode.LW, result, addrPointedTo, 0);
                    }
                    case ArrayType at -> {
                        currSection.emit(OpCode.LW, result, addrPointedTo, 0);
                    }
                    case StructType st -> {
                        currSection.emit(OpCode.LW, result, addrPointedTo, 0);
                    }
                    default -> {

                    }
                }

                yield result;

            }

        };
    }

}
