package ast;

import java.util.ArrayList;
import java.util.List;

public final class StructTypeDecl extends Decl {

    public StructType structType;
    public List<VarDecl> vds;
    public int size;

    public StructTypeDecl(StructType structType, List<VarDecl> vds) {

        this.name = "struct " + structType.name;
        this.structType = structType;
        this.vds = vds;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>();
        children.add(structType);
        children.addAll(vds);

        return children;
    }

}
