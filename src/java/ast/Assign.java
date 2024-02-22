package ast;

import java.util.List;
import java.util.Arrays;

public final class Assign extends Expr{

    public Expr variable;
    public Expr value;

    public Assign(Expr variable, Expr value) {
        this.variable = variable;
        this.value = value;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(variable,value);
    }
    
}
