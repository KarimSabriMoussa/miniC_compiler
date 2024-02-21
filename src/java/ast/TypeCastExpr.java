package ast;

import java.util.List;

public final class TypeCastExpr extends Expr {

    public Type type;
    public Expr expr;

    public TypeCastExpr(Type type, Expr expr) {
        this.type = type;
        this.expr = expr;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }

}
