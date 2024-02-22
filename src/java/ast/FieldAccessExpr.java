package ast;

import java.util.List;
import java.util.ArrayList;

public final class FieldAccessExpr extends Expr {

    public Expr struct;
    public String member;

    public FieldAccessExpr(Expr struct, String member) {
        this.struct = struct;
        this.member = member;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(struct);

        return children;
    }

}
