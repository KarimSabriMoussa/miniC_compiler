package ast;

import java.util.List;
import java.util.ArrayList;

public final class StrLiteral extends Expr {

    public String str;

    public StrLiteral(String str) {
        this.str = str;
    }

    @Override
    public List<ASTNode> children() {
        return new ArrayList<ASTNode>();
    }

}
