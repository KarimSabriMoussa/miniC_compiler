package ast;

import java.util.List;
import java.util.ArrayList;

public final class NewInstance extends Expr {

    public ClassType classType;

    public NewInstance(ClassType classType) {
        this.classType = classType;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<ASTNode>();
        children.add(classType);
        return children;
    }

}
