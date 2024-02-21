package ast;

import java.util.List;

public final class Assign extends Expr{

    public Expr variable;
    public Expr value;

    public Assign(Expr variable, Expr value) {
        this.variable = variable;
        this.value = value;
    }

    @Override
    public List<ASTNode> children() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'children'");
    }
    
}
