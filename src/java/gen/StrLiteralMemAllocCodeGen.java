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

                staticDataSection.emit(new Directive("align 2"));

                Label label = Label.create();
                staticDataSection.emit(label);
                String escapedString = sl.str
                        .replace("\\", "\\\\")
                        .replace("\b", "\\b")
                        .replace("\n", "\\n")
                        .replace("\t", "\\t")
                        .replace("\r", "\\r")
                        .replace("\f", "\\f")
                        .replace("\"", "\\\"")
                        .replace("\'", "\\\'");
                staticDataSection.emit(new Directive("asciiz " + "\"" + escapedString + "\""));
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
