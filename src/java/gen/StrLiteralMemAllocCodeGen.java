package gen;

import ast.ASTNode;
import ast.StrLiteral;
import gen.asm.AssemblyProgram;
import gen.asm.AssemblyProgram.Section;
import gen.asm.Directive;
import gen.asm.Label;

public class StrLiteralMemAllocCodeGen extends CodeGen {

    private Section staticDataSection;

    public StrLiteralMemAllocCodeGen(AssemblyProgram asmProg, Section dataSection) {
        this.asmProg = asmProg;
        this.staticDataSection = dataSection;
    }

    void visit(ASTNode n) {
        switch (n) {
            case StrLiteral sl -> {
                Label label = Label.create();
                staticDataSection.emit(label);
                staticDataSection.emit(new Directive("asciiz " + "\"" + sl.str + "\""));
                sl.label = label;
            }
            case ASTNode a -> {
                for (ASTNode child : a.children()) {
                    visit(child);
                }
            }
        }
    }

}
