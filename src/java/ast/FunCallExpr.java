package ast;

import java.util.List;
import java.util.ArrayList;

public final class FunCallExpr extends Expr {

    public String name;
    public List<Expr> args;
    public FunDecl fd;

    public FunCallExpr(String name, List<Expr> args) {
        this.name = name;
        this.args = args;
    }

    @Override
    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>(); 
        children.addAll(args);

        return children;
    }

}
