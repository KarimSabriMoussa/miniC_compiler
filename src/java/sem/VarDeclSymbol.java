package sem;

import ast.VarDecl;

public class VarDeclSymbol extends Symbol {

    public VarDecl vd;

    public VarDeclSymbol(VarDecl vd) {
        super(vd.name);
        this.vd = vd;
    }
}
