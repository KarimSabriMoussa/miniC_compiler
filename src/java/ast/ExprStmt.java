package ast;

import java.util.List;
import java.util.Arrays;

public final class ExprStmt extends Stmt {

    public Expr expr;

    public ExprStmt(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(expr);
    }
    
}
