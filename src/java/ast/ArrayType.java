package ast;

import java.util.ArrayList;
import java.util.List;

public final class ArrayType implements Type {

    public Type type;
    public int arraySize;

    public ArrayType(Type type, int arraySize) {
        this.type = type;
        this.arraySize = arraySize;
    }

    @Override
    public List<ASTNode> children() {
        ArrayList<ASTNode> children = new ArrayList<ASTNode>();
        children.add(type);
        return children;
    }

}
