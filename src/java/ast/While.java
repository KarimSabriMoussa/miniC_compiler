package ast;

import java.util.List;

public final class While extends Stmt {

    public Expr condition;
    public Stmt stmt;

    public While(Expr condition, Stmt stmt) {
        this.condition = condition;
        this.stmt = stmt;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }
    
}
