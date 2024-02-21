package ast;

import java.util.List;

public final class StrLiteral extends Expr {

    public String str;

    public StrLiteral(String str) {
        this.str = str;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }

}
