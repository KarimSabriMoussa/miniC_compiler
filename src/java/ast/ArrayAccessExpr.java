package ast;

import java.util.List;
import java.util.Arrays;

public final class ArrayAccessExpr extends Expr {

    public Expr array;
    public Expr index;

    public ArrayAccessExpr(Expr array, Expr index) {
        this.array = array;
        this.index = index;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(array,index);
    }

}
