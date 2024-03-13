package ast;

import java.util.Arrays;
import java.util.List;

import gen.asm.Label;

public final class VarDecl extends Decl {

    public Label globalLabel;
    public int structOffset;

    public VarDecl(Type type, String name) {
	    this.type = type;
	    this.name = name;
    }

    public List<ASTNode> children() {
        return Arrays.asList(type);
    }

}
