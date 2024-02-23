package sem;

import ast.ASTNode;
import ast.ArrayType;
import ast.BaseType;
import ast.Decl;
import ast.PointerType;
import ast.Program;
import ast.StructType;
import ast.StructTypeDecl;
import ast.Type;
import ast.VarDecl;

public class StructDeclAnalyzer extends BaseSemanticAnalyzer {

    public void visit(ASTNode node) {

        switch (node) {
            case null -> {
                throw new IllegalStateException("Unexpected null value");
            }
            case StructTypeDecl std -> {
                StructType structType = std.structType;
                for (VarDecl vd : std.vds) {
                    if (!checkVarDecl(vd.type, structType)) {
                        error("recursive struct type variable decleration");
                    }
                }
            }
            case Program p -> {
                for (Decl decl : p.decls) {
                    visit(decl);
                }
            }
            case ASTNode n -> {

            }
        }
    }

    private boolean checkVarDecl(Type type, StructType structType) {
        switch (type) {
            case null -> {
                throw new IllegalStateException("Unexpected null value");
            }
            case StructType st -> {
                if (st.name.equals(structType.name)) {
                    return false;
                } else {
                    return true;
                }
            }
            case ArrayType at -> {
                return checkVarDecl(at.type, structType);
            }
            case PointerType pt -> {
                return true;
            }
            case BaseType t -> {
                return true;
            }
        }
    }

}
