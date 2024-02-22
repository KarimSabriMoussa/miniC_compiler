package ast;

import java.util.List;
import java.util.ArrayList;

public final class SizeOfExpr extends Expr {

    public Type type;

    public SizeOfExpr(Type type) {
        this.type = type;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(type);
        return children;
    }

}
