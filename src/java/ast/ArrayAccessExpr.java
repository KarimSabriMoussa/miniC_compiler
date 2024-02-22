package ast;

import java.util.List;
import java.util.ArrayList;

public final class ArrayAccessExpr extends Expr {

    public Expr array;
    public Expr index;

    public ArrayAccessExpr(Expr array, Expr index) {
        this.array = array;
        this.index = index;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(array);
        children.add(index);

        return children;
    }

}
