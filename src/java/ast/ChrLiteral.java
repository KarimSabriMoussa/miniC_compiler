package ast;

import java.util.List;

public final class ChrLiteral extends Expr {

    public char chr;

    public ChrLiteral(char c) {
        this.chr = c;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }

}
