package ast;

import java.util.List;
import java.util.ArrayList;

public final class ExprStmt extends Stmt {

    public Expr expr;

    public ExprStmt(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<ASTNode>();
    }
    
}
