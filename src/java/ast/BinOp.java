package ast;

import java.util.List;
import java.util.Arrays;

public final class BinOp extends Expr {

    public Expr leftOperand;
    public Expr rightOperand;
    public Op op;

    public BinOp(Expr leftOperand, Expr rightOperand, Op op) {
        this.leftOperand = leftOperand;
        this.rightOperand = rightOperand;
        this.op = op;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(leftOperand,rightOperand);
    }
    
}
