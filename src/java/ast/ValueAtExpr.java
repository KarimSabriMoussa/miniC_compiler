package ast;

import java.util.List;
import java.util.ArrayList;

public final class ValueAtExpr extends Expr {

    public Expr expr;

    public ValueAtExpr(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(expr);
        return children;
    }

}
