package sem;

import ast.FunDecl;

public class FunDeclSymbol extends Symbol {

    public FunDecl fd;

    public FunDeclSymbol(FunDecl fd) {
        super(fd.name);
        this.fd = fd;
    }

}
