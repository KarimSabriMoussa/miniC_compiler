package ast;

import java.util.ArrayList;
import java.util.List;

public final class PointerType implements Type {

    public Type type;

    public PointerType(Type type) {
        this.type = type;
    }

    @Override
    public List<ASTNode> children() {
        ArrayList<ASTNode> children = new ArrayList<ASTNode>();
        children.add(type);
        return children;
    }

}
