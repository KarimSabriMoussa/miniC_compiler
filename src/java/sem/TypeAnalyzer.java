package sem;

import ast.*;

public class TypeAnalyzer extends BaseSemanticAnalyzer {

	public Type visit(ASTNode node) {
		return switch (node) {
			case null -> {
				throw new IllegalStateException("Unexpected null value");
			}

			case Block b -> {
				for (ASTNode c : b.children())
					visit(c);
				yield BaseType.NONE;
			}

			case FunDecl fd -> {
				// to complete
				yield BaseType.NONE;
			}

			case Program p -> {
				// to complete
				yield BaseType.NONE;
			}

			case VarDecl vd -> {
				// to complete
				yield BaseType.NONE;
			}

			case VarExpr v -> {
				// to complete
				yield BaseType.UNKNOWN; // to change
			}

			case StructTypeDecl std -> {
				// to complete
				yield BaseType.UNKNOWN; // to change
			}

			case Decl d -> {
				yield BaseType.UNKNOWN;
			}

			case Expr e -> {
				yield BaseType.UNKNOWN;
			}

			case Stmt s -> {
				yield BaseType.UNKNOWN;
			}

			case Type t -> {
				yield t;
			}

			// to complete ...
		};

	}

}
