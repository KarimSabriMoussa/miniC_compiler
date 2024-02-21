package ast;

import java.util.List;

public final class FieldAccessExpr extends Expr {

    public Expr struct;
    public String member;

    public FieldAccessExpr(Expr struct, String member) {
        this.struct = struct;
        this.member = member;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }

}
