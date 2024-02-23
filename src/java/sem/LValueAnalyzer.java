package sem;

import ast.*;

public class LValueAnalyzer extends BaseSemanticAnalyzer {

    public void visit(ASTNode node) {

        switch (node) {

            case Assign a -> {
                switch (a.variable) {
                    case VarExpr ve -> {

                    }
                    case FieldAccessExpr fae -> {

                    }
                    case ArrayAccessExpr aae -> {

                    }
                    case ValueAtExpr vae -> {

                    }
                    default -> {
                        error("cannot assign a value");
                    }
                }

                visit(a.value);
            }
            case AddressOfExpr ae -> {
                switch (ae.expr) {
                    case VarExpr ve -> {

                    }
                    case FieldAccessExpr fae -> {

                    }
                    case ArrayAccessExpr aae -> {

                    }
                    case ValueAtExpr vae -> {

                    }
                    default -> {
                        error("cannot get address of");
                    }
                }
            }
            case Program p -> {
                for (ASTNode child : p.children()) {
                    visit(child);
                }
            }
            case ASTNode n -> {
                for (ASTNode child : n.children()) {
                    visit(child);
                }
            }
        }

    }
}
