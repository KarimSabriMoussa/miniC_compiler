package ast;

import java.util.Arrays;
import java.util.List;

public final class VarDecl extends Decl {

    public VarDecl(Type type, String name) {
	    this.type = type;
	    this.name = name;
    }

    public List<ASTNode> children() {
        return Arrays.asList(type);
    }

}
