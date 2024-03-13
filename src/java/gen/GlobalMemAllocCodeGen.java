package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import gen.asm.Label;
import gen.asm.OpCode;
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
            case StructTypeDecl std -> {
                int size = 0;
                for (VarDecl vd : std.vds) {
                    size += getSize(vd.type);

                    if (size % 4 != 0) {
                        size += size % 4;
                    }
                }
                std.structType.size = size;
            }
            case VarDecl vd -> {
                int size = getSize(vd.type);

                staticDataSection.emit(Label.create(vd.name));
                staticDataSection.emit(new Directive("space " + size));

                staticDataPointer += size;
                if (staticDataPointer % 4 != 0) {
                    size += size % 4;
                    staticDataSection.emit(Label.create("padding"));
                    staticDataSection.emit(new Directive("space " + size % 4));
                }
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
                yield a.arraySize * getSize(a.type);
            }
            case StructType s -> {
                yield s.size;
            }
            default -> {
                throw new IllegalStateException("can't compute size for this type");
            }
        };
    }

}
