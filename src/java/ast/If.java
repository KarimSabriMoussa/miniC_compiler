package ast;

import java.util.List;

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
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }

}
