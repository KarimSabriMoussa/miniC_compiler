package ast;

import java.util.ArrayList;
import java.util.List;

public final class ClassType implements Type {

    public String name;
    public ClassDecl cd;

    public ClassType(String name) {
        this.name = name;
    }

    public List<ASTNode> children() {
        return new ArrayList<ASTNode>();
    }
}
