package ast;

import java.util.List;
import java.util.Arrays;

public final class TypecastExpr extends Expr {
    
    public Type target_type;
    public Expr expr;

    public TypecastExpr(Type target_type, Expr expr) {
        this.target_type = target_type;
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(target_type, expr);
    }

}
