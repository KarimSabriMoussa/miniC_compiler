package ast;

import java.util.ArrayList;
import java.util.List;

public final class InstanceFunCallExpr extends Expr {

    public Expr classInstance;
    public FunCallExpr classFuncCall;

    public InstanceFunCallExpr(Expr classInstance, FunCallExpr classFuncCall) {
        this.classInstance = classInstance;
        this.classFuncCall = classFuncCall;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(classInstance);
        children.add(classFuncCall);

        return children;
    }

}
