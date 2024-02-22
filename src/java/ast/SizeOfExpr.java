package ast;

import java.util.List;
import java.util.Arrays;

public final class SizeOfExpr extends Expr {

    public Type type;

    public SizeOfExpr(Type type) {
        this.type = type;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(type);
    }

}
