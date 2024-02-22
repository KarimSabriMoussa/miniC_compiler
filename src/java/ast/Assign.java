package ast;

import java.util.List;
import java.util.ArrayList;

public final class Assign extends Expr{

    public Expr variable;
    public Expr value;

    public Assign(Expr variable, Expr value) {
        this.variable = variable;
        this.value = value;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(variable);
        children.add(value);

        return children;
    }
    
}
