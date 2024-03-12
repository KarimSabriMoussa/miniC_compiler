package gen;

import ast.ASTNode;
import gen.asm.AssemblyProgram;

/* This allocator should deal with local variable declarations. */

public class LocalMemAllocCodeGen extends CodeGen {

    public LocalMemAllocCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    boolean global = true;
    int fpOffset = 0;

    void visit(ASTNode n) {

    }

}
