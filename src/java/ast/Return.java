package ast;

import java.util.List;

public final class Return extends Stmt {

    public Expr expr;

    public Return(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }

}
