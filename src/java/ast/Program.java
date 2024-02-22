package ast;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Program implements ASTNode {

    public final List<Decl> decls;

    public Program(List<Decl> decls) {
        this.decls = decls;
    }

    public List<ASTNode> children() {
        return new ArrayList<>(decls);
    }

    public void addMiniCStdLib() {

        List<VarDecl> vds = new ArrayList<VarDecl>();
        List<Stmt> stmt = new ArrayList<Stmt>();

        FunDecl print_s_funDecl = new FunDecl(BaseType.VOID, "print_s",
                Arrays.asList(new VarDecl(new PointerType(BaseType.CHAR), "s")), new Block(vds, stmt));
        FunDecl print_i_funDecl = new FunDecl(BaseType.VOID, "print_i", Arrays.asList(new VarDecl(BaseType.INT, "i")),
                new Block(vds, stmt));
        FunDecl print_c_funDecl = new FunDecl(BaseType.VOID, "print_c", Arrays.asList(new VarDecl(BaseType.CHAR, "c")),
                new Block(vds, stmt));
        FunDecl read_c_funDecl = new FunDecl(BaseType.CHAR, "read_c", new ArrayList<VarDecl>(), new Block(vds, stmt));
        FunDecl read_i_funDecl = new FunDecl(BaseType.INT, "read_i", new ArrayList<VarDecl>(), new Block(vds, stmt));
        FunDecl mcmalloc_funDecl = new FunDecl(new PointerType(BaseType.VOID), "mcmalloc",
                Arrays.asList(new VarDecl(BaseType.INT, "size")), new Block(vds, stmt));

        decls.add(0, mcmalloc_funDecl);
        decls.add(0, read_i_funDecl);
        decls.add(0, read_c_funDecl);
        decls.add(0, print_c_funDecl);
        decls.add(0, print_i_funDecl);
        decls.add(0, print_s_funDecl);
    }

}
