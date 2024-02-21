package ast;

import java.util.List;

public final class ArrayAccessExpr extends Expr {

    public Expr array;
    public Expr index;

    public ArrayAccessExpr(Expr array, Expr index) {
        this.array = array;
        this.index = index;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }
    
}
