package ast;

import java.util.List;
import java.util.ArrayList;

public final class ChrLiteral extends Expr {

    public char chr;

    public ChrLiteral(char c) {
        this.chr = c;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<ASTNode>();
    }

}
