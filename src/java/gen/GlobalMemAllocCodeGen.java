package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyProgram.Section;

public class GlobalMemAllocCodeGen extends CodeGen {

    private Section staticDataSection;
    private int staticDataPointer = 0;

    public GlobalMemAllocCodeGen(AssemblyProgram asmProg, Section staticDataSection) {
        this.staticDataSection = staticDataSection;
        this.asmProg = asmProg;
    }

    void visit(ASTNode n) {
        switch (n) {
            case VarDecl vd -> {
                int size = getSize(vd.type);
            }
            case ASTNode a -> {
                for (ASTNode child : a.children()) {
                    visit(child);
                }
            }
        }
    }

    private int getSize(Type t) {
        return switch (t) {
            case BaseType.VOID -> {
                yield 0;
            }
            case BaseType.INT -> {
                yield 4;
            }
            case BaseType.CHAR -> {
                yield 1;
            }
            case ArrayType a -> {
                yield 1;
            }
            case StructType s -> {
                yield 1;
            }
            default -> {
                throw new IllegalStateException("can't compute size for this type");
            }
        };
    }

}
