package ast;

import java.util.List;

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
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }
    
}
