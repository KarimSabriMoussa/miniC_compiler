package ast;

import java.util.List;

public final class IntLiteral extends Expr {

    public int value;

    public IntLiteral(int value) {
        this.value = value;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }

}
