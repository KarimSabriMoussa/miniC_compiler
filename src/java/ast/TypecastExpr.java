package ast;

import java.util.List;
import java.util.Arrays;

public final class TypecastExpr extends Expr {

    public Type type;
    public Expr expr;

    public TypecastExpr(Type type, Expr expr) {
        this.type = type;
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(type,expr);
    }

}
