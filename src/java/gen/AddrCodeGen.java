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
            case VarExpr ve -> {
                Section currSection = asmProg.getCurrentSection();
                Register addr = Register.Virtual.create();

                if (ve.vd.globalLabel != null) {
                    currSection.emit(OpCode.LA, addr, ve.vd.globalLabel);
                } else {
                    currSection.emit(OpCode.ADDIU, addr, Register.Arch.fp, ve.vd.fpOffset);
                }

                yield addr;
            }
            case FieldAccessExpr fae -> {

                Section currSection = asmProg.getCurrentSection();
                Register addr = visit(fae.struct);
                VarDecl member = fae.getMember(fae.member);

                currSection.emit(OpCode.ADDIU, addr, addr, member.structOffset);

                yield addr;
            }
            case ArrayAccessExpr aae -> {
                Section currSection = asmProg.getCurrentSection();
                Register addr = Register.Virtual.create();

                Register baseAddr = visit(aae.array);
                Register offset = (new ExprCodeGen(asmProg)).visit(aae.index);
                Register typeSize = Register.Virtual.create();
                currSection.emit(OpCode.LI, typeSize, Type.getSize(aae.type));
                currSection.emit(OpCode.MUL, offset, offset, typeSize);
                currSection.emit(OpCode.ADD, addr, baseAddr, offset);
                yield addr;
            }
            case ValueAtExpr vae -> {
                Section currSection = asmProg.getCurrentSection();
                Register addr = visit(vae.expr);
                Register addrPointedTo = Register.Virtual.create();
                currSection.emit(OpCode.LW, addrPointedTo, addr, 0);
                yield addrPointedTo;
            }
            default -> {
                yield null;
            }
        };
    }

}
