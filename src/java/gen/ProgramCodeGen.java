package gen;

import ast.FunDecl;
import ast.Program;
import gen.asm.AssemblyProgram;

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
        // allocate global variables
        GlobalMemAllocCodeGen globablAllocator = new GlobalMemAllocCodeGen(asmProg, dataSection);
        globablAllocator.visit(p);

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
