package ast;

import java.util.ArrayList;
import java.util.List;

public final class StructType implements Type {

    public String name;
    public int size;

    public StructType(String name) {
        this.name = name;
    }

    public List<ASTNode> children() {
        return new ArrayList<ASTNode>();
    }
}
