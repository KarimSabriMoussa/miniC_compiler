package gen;

import ast.*;
import gen.asm.AssemblyProgram;

/* This allocator should deal with local variable declarations. */

public class LocalMemAllocCodeGen extends CodeGen {

    private boolean local = false;
    private int fpOffset = 0;

    public LocalMemAllocCodeGen(AssemblyProgram asmProg) {
        this.asmProg = asmProg;
    }

    void visit(ASTNode n) {
        switch (n) {
            case FunDecl fd -> {
                fd.returnValueFpOffset = 4;
                int offset = 4 + Type.getStackSize(fd.type);
                for (VarDecl param : fd.params.reversed()) {

                    if (offset % 4 != 0) {
                        offset += 4 - (offset % 4);
                    }

                    param.fpOffset = offset;
                    offset += Type.getStackSize(param.type);
                }

                fd.argSegmentSize = offset - 4;

                fpOffset = -4;
                local = true;
                visit(fd.block);
                local = false;
            }
            case VarDecl vd -> {
                if (local) {
                    fpOffset -= Type.getSize(vd.type);
                    
                    if (fpOffset % 4 != 0) {
                        fpOffset -= 4 - (Math.abs(fpOffset) % 4);
                    }

                    vd.fpOffset = fpOffset;
                }
            }
            case ASTNode a -> {
                for (ASTNode child : a.children()) {
                    visit(child);
                }
            }
        }
    }

}
