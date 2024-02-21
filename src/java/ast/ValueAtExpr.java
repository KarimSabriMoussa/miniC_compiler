package ast;

import java.util.List;

public final class ValueAtExpr extends Expr {

    public Expr expr;

    public ValueAtExpr(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }

}
