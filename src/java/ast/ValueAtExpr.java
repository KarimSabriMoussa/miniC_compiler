package ast;

import java.util.List;
import java.util.Arrays;

public final class ValueAtExpr extends Expr {

    public Expr expr;

    public ValueAtExpr(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(expr);
    }

}
