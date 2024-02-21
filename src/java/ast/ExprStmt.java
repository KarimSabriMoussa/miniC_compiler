package ast;

import java.util.List;

public final class ExprStmt extends Stmt {

    public Expr expr;

    public ExprStmt(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }
    
}
