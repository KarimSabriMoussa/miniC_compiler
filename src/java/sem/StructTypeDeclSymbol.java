package sem;

import ast.StructTypeDecl;

public class StructTypeDeclSymbol extends Symbol {

    public StructTypeDecl std;

    public StructTypeDeclSymbol(StructTypeDecl std){
        super(std.name);
        this.std = std;
    }
}
