package sem;

import ast.ASTNode;
import ast.FunDecl;
import ast.Program;
import ast.VarDecl;
import java.util.Map;
import java.util.HashMap;

public class FunDeclAnalyzer extends BaseSemanticAnalyzer {

    private Map<String, Symbol> symbolTable;

    public void visit(ASTNode node) {
        switch (node) {
            case FunDecl fd -> {

                symbolTable = new HashMap<>();

                for (VarDecl vd : fd.params) {
                    Symbol symbol = symbolTable.get(vd.name);

                    if (symbol == null) {
                        VarDeclSymbol sym = new VarDeclSymbol(vd);
                        symbolTable.put(sym.name, sym);
                    } else {
                        error("duplicate decleration");
                    }
                }
                for (VarDecl vd : fd.block.vds) {
                    Symbol symbol = symbolTable.get(vd.name);

                    if (symbol == null) {
                        VarDeclSymbol sym = new VarDeclSymbol(vd);
                        symbolTable.put(sym.name, sym);
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
