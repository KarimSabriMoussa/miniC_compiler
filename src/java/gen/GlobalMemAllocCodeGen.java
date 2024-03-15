package gen;

import ast.*;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import gen.asm.Label;
import gen.asm.AssemblyProgram.Section;

public class GlobalMemAllocCodeGen extends CodeGen {

    private Section staticDataSection;

    public GlobalMemAllocCodeGen(AssemblyProgram asmProg, Section dataSection) {
        this.staticDataSection = dataSection;
        this.asmProg = asmProg;
    }

    void visit(ASTNode n) {
        switch (n) {
            case StructTypeDecl std -> {
                int size = 0;
                for (VarDecl vd : std.vds) {

                    if (size % 4 != 0) {
                        size += 4 - (size % 4);
                    }

                    vd.structOffset = size;

                    size += Type.getSize(vd.type);
                }

                if (size % 4 != 0) {
                    size += 4 - (size % 4);
                }

                std.size = size;
            }
            case VarDecl vd -> {

                staticDataSection.emit(new Directive("align 2"));

                int size = Type.getSize(vd.type);

                Label label = Label.create(vd.name);

                staticDataSection.emit(label);
                staticDataSection.emit(new Directive("space " + size));

                vd.globalLabel = label;
            }
            case Program p -> {
                for (ASTNode child : p.children()) {
                    visit(child);
                }
            }
            case ASTNode a -> {

            }
        }
    }

}
