package ast;

import java.util.List;
import java.util.ArrayList;

public final class TypecastExpr extends Expr {

    public Type type;
    public Expr expr;

    public TypecastExpr(Type type, Expr expr) {
        this.type = type;
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(type);
        children.add(expr);

        return children;
    }

}
