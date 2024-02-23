package ast;

import java.util.List;
import java.util.Arrays;

public final class SizeOfExpr extends Expr {

    public Type target_type;

    public SizeOfExpr(Type target_type) {
        this.target_type = target_type;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(target_type);
    }

}
