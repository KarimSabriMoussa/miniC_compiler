package ast;

import java.util.Arrays;
import java.util.List;

public final class AddressOfExpr extends Expr {

    public Expr expr;

    public AddressOfExpr(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(expr);
    }

}
