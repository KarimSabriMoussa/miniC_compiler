package ast;

import java.util.List;

public final class SizeOfExpr extends Expr{

    public Type type;

    public SizeOfExpr(Type type) {
        this.type = type;
    }
    
    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }
    
}
