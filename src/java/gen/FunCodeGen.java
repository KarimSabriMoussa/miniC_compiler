package gen;

import ast.FunDecl;
import gen.asm.AssemblyProgram;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.AssemblyProgram.Section;
import gen.asm.Register.Arch;

/**
 * A visitor that produces code for a single function declaration
 */
public class FunCodeGen extends CodeGen {

    public FunCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void visit(FunDecl fd) {

        if (fd.name.equals("main")) {
            Section text = asmProg.newSection(AssemblyProgram.Section.Type.TEXT);
            Label main = Label.get("main");
            text.emit(main);

            StmtCodeGen scd = new StmtCodeGen(asmProg);
            scd.visit(fd.block);

            text.emit(OpCode.LI, Arch.v0, 10);
            text.emit(OpCode.SYSCALL);

            return;
        }

        // Each function should be produced in its own section.
        // This is necessary for the register allocator.
        asmProg.newSection(AssemblyProgram.Section.Type.TEXT);

        // TODO: to complete
        // 1) emit the prolog

        // 2) emit the body of the function
        StmtCodeGen scd = new StmtCodeGen(asmProg);
        scd.visit(fd.block);

        // 3) emit the epilog
        return;
    }

}
