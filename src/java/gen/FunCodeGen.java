package gen;

import ast.FunDecl;
import ast.VarDecl;
import gen.asm.AssemblyProgram;
import gen.asm.Directive;
import gen.asm.Label;
import gen.asm.OpCode;
import gen.asm.Register;
import gen.asm.AssemblyProgram.Section;
import gen.asm.Register.Arch;
import java.util.Set;
import java.util.Arrays;

/**
 * A visitor that produces code for a single function declaration
 */
public class FunCodeGen extends CodeGen {

    private Set<String> minicStdLibFunctions = Set.of("print_i", "print_c", "print_s", "read_i", "read_c",
            "mcmalloc");

    public FunCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void visit(FunDecl fd) {

        if (minicStdLibFunctions.contains(fd.name)) {
            return;
        }

        (new LocalMemAllocCodeGen(asmProg)).visit(fd);

        if (fd.name.equals("main")) {
            Section text = asmProg.newSection(AssemblyProgram.Section.Type.TEXT);
            Label main = Label.get("main");
            fd.returnLabel = Label.create("return");

            text.emit("entry point main function ");
            text.emit(new Directive("globl main"));
            text.emit(main);

            text.emit("initialising frame pointer as the value of the stack");
            text.emit(OpCode.ADDU, Register.Arch.fp, Register.Arch.sp, Register.Arch.zero);

            text.emit("moving sp by a word");
            text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);

            text.emit("moving sp by the size of the local variables");

            VarDecl[] localVars = fd.block.vds.toArray(new VarDecl[0]);
            int minOffset = Arrays.stream(localVars).mapToInt(v -> v.fpOffset).min().orElse(-4);
            text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, minOffset + 4);

            StmtCodeGen scd = new StmtCodeGen(asmProg);
            scd.visit(fd.block);

            text.emit(fd.returnLabel);
            text.emit("exiting the program");

            text.emit(OpCode.LI, Arch.v0, 10);
            text.emit(OpCode.SYSCALL);

            return;
        }

        asmProg.newSection(AssemblyProgram.Section.Type.TEXT);
        fd.label = Label.create(fd.name);
        fd.returnLabel = Label.create("return");

        Section currSection = asmProg.getCurrentSection();
        currSection.emit(fd.label);

        currSection.emit("storing the old fp value at the start of the frame");
        currSection.emit(OpCode.SW, Register.Arch.fp, Register.Arch.sp, 0);

        currSection.emit("setting the new fp to the value of the sp");
        currSection.emit(OpCode.ADDU, Register.Arch.fp, Register.Arch.sp, Register.Arch.zero);

        currSection.emit("moving sp by a word to reserve space for the return address");
        currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);

        currSection.emit("storing the return address in the frame");
        currSection.emit(OpCode.SW, Register.Arch.ra, Register.Arch.sp, 0);

        currSection.emit("moving sp by the size of the local variables");

        VarDecl[] localVars = fd.block.vds.toArray(new VarDecl[0]);
        int minOffset = Arrays.stream(localVars).mapToInt(v -> v.fpOffset).min().orElse(-4);
        currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, minOffset + 4);

        currSection.emit("pushing all used registers onto the stack");
        currSection.emit(OpCode.PUSH_REGISTERS);

        StmtCodeGen scd = new StmtCodeGen(asmProg);
        scd.visit(fd.block);

        currSection.emit("return label of the function " + fd.name);
        currSection.emit(fd.returnLabel);

        currSection.emit("popping all used registers from the stack");
        currSection.emit(OpCode.POP_REGISTERS);

        currSection.emit("setting the sp to the top of the old frame");
        currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.fp, 4);

        currSection.emit("load the return address from the stack");
        currSection.emit(OpCode.LW, Register.Arch.ra, Register.Arch.fp, -4);

        currSection.emit("load the old frame pointer into fp");
        currSection.emit(OpCode.LW, Register.Arch.fp, Register.Arch.fp, 0);

        currSection.emit("jump to the return address");
        currSection.emit(OpCode.JR, Register.Arch.ra);

        return;
    }

}
