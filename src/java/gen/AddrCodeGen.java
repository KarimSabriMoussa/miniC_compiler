package gen;

import ast.*;
import gen.asm.*;
import gen.asm.AssemblyProgram.*;

/**
 * Generates code to calculate the address of an expression and return the
 * result in a register.
 */
public class AddrCodeGen extends CodeGen {

    public AddrCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    public Register visit(Expr e) {
        return switch (e) {
            case null -> {
                throw new IllegalStateException("Unexpected null value");
            }
            case VarExpr ve -> {
                Section currSection = asmProg.getCurrentSection();
                Register addr = Register.Virtual.create();

                currSection.emit("get address of variable");

                if (ve.vd.globalLabel != null) {
                    currSection.emit(OpCode.LA, addr, ve.vd.globalLabel);
                } else {
                    currSection.emit(OpCode.ADDIU, addr, Register.Arch.fp, ve.vd.fpOffset);

                    switch (ve.vd.type) {
                        case ArrayType at -> {
                            if (ve.vd.fpOffset > 0) {
                                currSection.emit(OpCode.LW, addr, addr, 0);
                            }
                        }
                        default -> {

                        }
                    }
                }

                yield addr;
            }
            case FieldAccessExpr fae -> {

                Section currSection = asmProg.getCurrentSection();

                currSection.emit("get address of the structure");
                Register addr = visit(fae.struct);
                VarDecl member = fae.getMember(fae.member);

                currSection.emit("add offset of the member within the struct");
                currSection.emit(OpCode.ADDIU, addr, addr, member.structOffset);

                yield addr;
            }
            case ArrayAccessExpr aae -> {
                Section currSection = asmProg.getCurrentSection();
                Register addr = Register.Virtual.create();

                currSection.emit("get base address of the array");
                Register baseAddr = visit(aae.array);

                currSection.emit("get index of of the array access");
                Register offset = (new ExprCodeGen(asmProg)).visit(aae.index);
                Register typeSize = Register.Virtual.create();

                currSection.emit("getting address of element based on the index");
                currSection.emit(OpCode.LI, typeSize, Type.getSize(aae.type));
                currSection.emit(OpCode.MUL, offset, offset, typeSize);
                currSection.emit(OpCode.ADD, addr, baseAddr, offset);
                yield addr;
            }
            case ValueAtExpr vae -> {
                Section currSection = asmProg.getCurrentSection();

                currSection.emit("getting address of the pointer");
                Register addr = visit(vae.expr);
                Register addrPointedTo = Register.Virtual.create();

                currSection.emit("get the address pointed to");
                currSection.emit(OpCode.LW, addrPointedTo, addr, 0);
                yield addrPointedTo;
            }
            case TypecastExpr tce -> {
                Register addr = visit(tce.expr);
                yield addr;
            }
            case AddressOfExpr aoe -> {
                yield null;
            }
            case Assign a -> {
                yield null;
            }
            case SizeOfExpr soe -> {
                yield null;
            }
            case BinOp bo -> {
                yield null;
            }
            case FunCallExpr fce -> {
                yield null;
            }
            case ChrLiteral cl -> {
                yield null;
            }
            case IntLiteral il -> {
                yield null;
            }
            case StrLiteral sl -> {
                yield null;
            }
        };
    }

}
