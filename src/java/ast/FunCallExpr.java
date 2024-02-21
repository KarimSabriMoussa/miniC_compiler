package ast;

import java.util.List;

public final class FunCallExpr extends Expr {

    public String name;
    public List<Expr> args;

    public FunCallExpr(String name, List<Expr> args) {
        this.name = name;
        this.args = args;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }
    
}
