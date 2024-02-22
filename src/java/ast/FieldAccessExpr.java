package ast;

import java.util.List;
import java.util.Arrays;

public final class FieldAccessExpr extends Expr {

    public Expr struct;
    public String member;

    public FieldAccessExpr(Expr struct, String member) {
        this.struct = struct;
        this.member = member;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(struct);
    }

}
