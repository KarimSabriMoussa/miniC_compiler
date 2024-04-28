package sem;

import ast.ClassDecl;

public class ClassDeclSymbol extends Symbol {

    public ClassDecl cd;

    public ClassDeclSymbol(ClassDecl cd) {
        super(cd.name);
        this.cd = cd;
    }

}
