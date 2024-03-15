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
            text.emit(new Directive("globl main"));
            Label main = Label.get("main");
            text.emit(main);

            text.emit(OpCode.ADDU, Register.Arch.fp, Register.Arch.sp, Register.Arch.zero);
            text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);

            VarDecl[] localVars = fd.block.vds.toArray(new VarDecl[0]);
            int minOffset = Arrays.stream(localVars).mapToInt(v -> v.fpOffset).min().orElse(-4);
            text.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, minOffset + 4);

            StmtCodeGen scd = new StmtCodeGen(asmProg);
            scd.visit(fd.block);

            text.emit(OpCode.LI, Arch.v0, 10);
            text.emit(OpCode.SYSCALL);

            return;
        }

        asmProg.newSection(AssemblyProgram.Section.Type.TEXT);
        fd.label = Label.create(fd.name);
        fd.returnLabel = Label.create("return");

        Section currSection = asmProg.getCurrentSection();
        currSection.emit(fd.label);
        currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);
        currSection.emit(OpCode.SW, Register.Arch.fp, Register.Arch.sp, 0);
        currSection.emit(OpCode.ADDU, Register.Arch.fp, Register.Arch.sp, Register.Arch.zero);
        currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, -4);
        currSection.emit(OpCode.SW, Register.Arch.ra, Register.Arch.sp, 0);

        VarDecl[] localVars = fd.block.vds.toArray(new VarDecl[0]);
        int minOffset = Arrays.stream(localVars).mapToInt(v -> v.fpOffset).min().orElse(-4);
        currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.sp, minOffset + 4);
        currSection.emit(OpCode.PUSH_REGISTERS);

        StmtCodeGen scd = new StmtCodeGen(asmProg);
        scd.visit(fd.block);

        currSection.emit(fd.returnLabel);
        currSection.emit(OpCode.POP_REGISTERS);
        currSection.emit(OpCode.ADDIU, Register.Arch.sp, Register.Arch.fp, 4);
        currSection.emit(OpCode.LW, Register.Arch.ra, Register.Arch.fp, -4);
        currSection.emit(OpCode.LW, Register.Arch.fp, Register.Arch.fp, 0);
        currSection.emit(OpCode.JR, Register.Arch.ra);

        return;
    }

}
