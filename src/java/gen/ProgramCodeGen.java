package gen;

import ast.FunDecl;
import ast.Program;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;

/**
 * This visitor should produce a program.
 */
public class ProgramCodeGen extends CodeGen {

    private final AssemblyProgram.Section dataSection;

    public ProgramCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
        this.dataSection = asmProg.newSection(AssemblyProgram.Section.Type.DATA);
    }

    void generate(Program p) {
        // allocate string literals
        StrLiteralMemAllocCodeGen strLiteralAllocator = new StrLiteralMemAllocCodeGen(asmProg, dataSection);
        strLiteralAllocator.visit(p);

        // allocate global variables
        GlobalMemAllocCodeGen globalAllocator = new GlobalMemAllocCodeGen(asmProg, dataSection);
        globalAllocator.visit(p);

        dataSection.emit(new Directive("align 2"));

        // generate the code for each function
        p.decls.forEach((d) -> {
            switch (d) {
                case FunDecl fd -> {
                    FunCodeGen fcg = new FunCodeGen(asmProg);
                    fcg.visit(fd);
                }
                default -> {
                }
            }
        });
    }

}
