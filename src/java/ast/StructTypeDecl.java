package ast;

import java.util.ArrayList;
import java.util.List;

public final class StructTypeDecl extends Decl {

    StructType structType;
    public List<VarDecl> vds;

    public StructTypeDecl(StructType structType, List<VarDecl> vds) {
        this.structType = structType;
        this.vds = vds;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.addAll(vds);

        return children;
    }

}
