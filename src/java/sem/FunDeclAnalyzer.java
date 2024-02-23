package sem;

import ast.ASTNode;
import ast.FunDecl;
import ast.Program;
import ast.VarDecl;

public class FunDeclAnalyzer extends BaseSemanticAnalyzer {

    Scope scope;

    public FunDeclAnalyzer() {
        this.scope = new Scope();
    }

    public void visit(ASTNode node) {
        switch (node) {
            case FunDecl fd -> {
                for (VarDecl vd : fd.params) {
                    Symbol symbol = scope.lookupCurrent(vd.name);

                    if (symbol == null) {
                        visit(vd.type);
                        scope.put(new VarDeclSymbol(vd));
                    } else {
                        error("duplicate decleration");
                    }
                }
                for (VarDecl vd : fd.block.vds) {
                    Symbol symbol = scope.lookupCurrent(vd.name);

                    if (symbol == null) {
                        visit(vd.type);
                        scope.put(new VarDeclSymbol(vd));
                    } else {
                        error("duplicate decleration");
                    }
                }
            }
            case Program p -> {
                for (ASTNode child : p.children()) {
                    visit(child);
                }
            }
            case ASTNode n -> {

            }
        }
    }

}
