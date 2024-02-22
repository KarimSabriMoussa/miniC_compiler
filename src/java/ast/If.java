package ast;

import java.util.List;
import java.util.ArrayList;

public final class If extends Stmt {

    public Expr condition;
    public Stmt stmt;
    public Stmt elseStmt;

    public If(Expr condition, Stmt stmt, Stmt elseStmt) {
        this.condition = condition;
        this.stmt = stmt;
        this.elseStmt = elseStmt;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(condition);
        children.add(stmt);

        if (elseStmt != null) {
            children.add(elseStmt);
        }

        return children;
    }

}
