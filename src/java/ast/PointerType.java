package ast;

import java.util.Arrays;
import java.util.List;

public final class PointerType implements Type {

    public Type type;

    public PointerType(Type type) {
        this.type = type;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(type);
    }

}
