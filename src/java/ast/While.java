package ast;

import java.util.List;
import java.util.ArrayList;

public final class While extends Stmt {

    public Expr condition;
    public Stmt stmt;

    public While(Expr condition, Stmt stmt) {
        this.condition = condition;
        this.stmt = stmt;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(condition);
        children.add(stmt);

        return children;
    }

}
