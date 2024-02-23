package ast;

import java.util.List;
import java.util.ArrayList;

public final class Return extends Stmt {

    public Expr expr;
    public FunDecl fd;

    public Return(Expr expr) {
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();

        if (expr != null) {
            children.add(expr);
        }

        return children;
    }

}
