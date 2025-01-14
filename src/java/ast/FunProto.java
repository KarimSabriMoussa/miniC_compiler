package ast;

import java.util.ArrayList;
import java.util.List;

public final class FunProto extends Decl {

    public List<VarDecl> params;

    public FunProto(Type type, String name, List<VarDecl> params) {
        this.type = type;
        this.name = name;
        this.params = params;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(type);
        children.addAll(params);
        return children;
    }

}
