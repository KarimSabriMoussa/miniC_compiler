package sem;

import ast.*;
import java.util.List;
import java.util.Arrays;
import java.util.Map;
import java.util.HashMap;

public class TypeAnalyzer extends BaseSemanticAnalyzer {

	private List<Op> int_ops = Arrays.asList(Op.ADD, Op.SUB, Op.MUL, Op.DIV, Op.MOD, Op.OR, Op.AND, Op.GE, Op.GT, Op.LE,
			Op.LT);
	private List<Op> equality_ops = Arrays.asList(Op.EQ, Op.NE);

	Map<String, StructTypeDecl> structs;

	public TypeAnalyzer() {
		this.structs = new HashMap<String, StructTypeDecl>();
	}

	public Type visit(ASTNode node) {
		return switch (node) {
			case null -> {
				throw new IllegalStateException("Unexpected null value");
			}

			case Block b -> {
				for (ASTNode child : b.children()) {
					visit(child);
				}
				yield BaseType.NONE;
			}

			case FunDecl fd -> {

				for (ASTNode child : fd.children()) {
					visit(child);
				}

				yield BaseType.NONE;
			}

			case Program p -> {
				for (ASTNode child : p.children()) {
					visit(child);
				}

				yield BaseType.NONE;
			}

			case VarDecl vd -> {

				if (vd.type == BaseType.VOID) {
					error("cannot declare a variable of type void");
				}

				yield BaseType.NONE;
			}

			case StructTypeDecl std -> {

				structs.put(std.structType.name, std);

				for (VarDecl vd : std.vds) {
					visit(vd);
				}

				yield BaseType.NONE;
			}

			case BinOp bo -> {
				Type lhsT = visit(bo.leftOperand);
				Type rhsT = visit(bo.rightOperand);

				if (int_ops.contains(bo.op)) {
					if (lhsT == BaseType.INT && rhsT == BaseType.INT) {
						bo.type = BaseType.INT;
						yield bo.type;
					} else {
						error("invalid operand types");
						yield BaseType.UNKNOWN;
					}
				} else if (equality_ops.contains(bo.op)) {
					switch (lhsT) {
						case ArrayType at -> {
							error("invalid operand types");
							yield BaseType.UNKNOWN;
						}
						case StructType st -> {
							error("invalid operand types");
							yield BaseType.UNKNOWN;
						}
						case BaseType.VOID -> {
							error("invalid operand types");
							yield BaseType.UNKNOWN;
						}
						default -> {
							break;
						}
					}

					switch (rhsT) {
						case ArrayType at -> {
							error("invalid operand types");
							yield BaseType.UNKNOWN;
						}
						case StructType st -> {
							error("invalid operand types");
							yield BaseType.UNKNOWN;
						}
						case BaseType.VOID -> {
							error("invalid operand types");
							yield BaseType.UNKNOWN;
						}
						default -> {
							break;
						}
					}
				}

				if (Type.equals(lhsT, rhsT)) {
					bo.type = BaseType.INT;
					yield bo.type;
				} else {
					error("operands are not of the same type");
					yield BaseType.UNKNOWN;
				}
			}

			case FunCallExpr fce -> {

				for (ASTNode child : fce.children()) {
					visit(child);
				}

				if (fce.fd != null) {
					yield matchFunCallToFunDecl(fce, fce.fd);
				}

				yield BaseType.UNKNOWN;
			}

			case ArrayAccessExpr aae -> {

				Type arrayType = visit(aae.array);
				Type indexType = visit(aae.index);

				switch (arrayType) {
					case ArrayType at -> {
						aae.type = at.type;
					}
					case PointerType pt -> {
						aae.type = pt.type;
					}
					default -> {
						error("invalid array access");
						yield BaseType.UNKNOWN;
					}
				}

				if (indexType != BaseType.INT) {
					error("invalid array access");
					yield BaseType.UNKNOWN;
				}

				yield aae.type;
			}

			case FieldAccessExpr fae -> {

				Type structType = visit(fae.struct);
				StructTypeDecl std;

				switch (structType) {
					case StructType st -> {
						std = structs.get(st.name);
						if (std == null) {
							yield BaseType.UNKNOWN;
						}

						fae.st = st;
					}
					default -> {
						error("cannot access field of an expression of type other than a struct");
						yield BaseType.UNKNOWN;
					}
				}

				for (VarDecl vd : std.vds) {
					if (fae.member != null && fae.member.equals(vd.name)) {
						fae.type = vd.type;
						yield fae.type;
					}
				}

				error("struct declaration does not contain this member");
				yield BaseType.UNKNOWN;
			}

			case ValueAtExpr vae -> {

				Type pointerType = visit(vae.expr);

				switch (pointerType) {
					case PointerType pt -> {
						vae.type = pt.type;
					}
					default -> {
						error("cannot get the value at an expression of type other than a pointer");
						yield BaseType.UNKNOWN;
					}
				}

				yield vae.type;
			}

			case AddressOfExpr aoe -> {
				Type exprT = visit(aoe.expr);
				aoe.type = new PointerType(exprT);

				yield aoe.type;
			}

			case SizeOfExpr soe -> {

				soe.type = BaseType.INT;
				yield soe.type;
			}

			case TypecastExpr tce -> {

				Type exprT = visit(tce.expr);

				switch (tce.target_type) {
					case BaseType.INT -> {
						if (exprT == BaseType.CHAR) {
							tce.type = BaseType.INT;
							yield tce.type;
						}
					}
					case PointerType pt1 -> {
						switch (exprT) {
							case PointerType pt2 -> {
								tce.type = pt1;
								yield tce.type;
							}
							case ArrayType at -> {
								if (Type.equals(at.type, pt1.type)) {
									tce.type = pt1;
									yield tce.type;
								}
							}
							default -> {
							}
						}
					}
					default -> {
					}
				}

				error("cannot cast");
				yield BaseType.UNKNOWN;
			}
			case Assign a -> {

				Type variableT = visit(a.variable);
				Type valueT = visit(a.value);

				switch (variableT) {
					case ArrayType at -> {
						error("cannot assign a value to a variable of type array");
						yield BaseType.UNKNOWN;
					}
					case BaseType.VOID -> {
						error("cannot assign a value to a variable of type void");
						yield BaseType.UNKNOWN;
					}
					default -> {

					}
				}

				if (Type.equals(variableT, valueT)) {
					a.type = valueT;
					yield a.type;
				}

				error("cannot assign a value to a variable of a different type");
				yield BaseType.UNKNOWN;
			}
			case VarExpr v -> {

				if (v.vd != null) {
					v.type = v.vd.type;
					yield v.type;
				}

				yield BaseType.UNKNOWN;
			}

			case IntLiteral il -> {
				il.type = BaseType.INT;
				yield il.type;
			}

			case StrLiteral sl -> {
				sl.type = new ArrayType(BaseType.CHAR, sl.str.length() + 1);
				yield sl.type;
			}

			case ChrLiteral cl -> {
				cl.type = BaseType.CHAR;
				yield cl.type;
			}

			case While w -> {
				Type conditionT = visit(w.condition);

				if (conditionT != BaseType.INT) {
					error("while condition doesn't evaluate to INT");
				}

				visit(w.stmt);

				yield BaseType.NONE;
			}

			case If i -> {
				Type conditionT = visit(i.condition);

				if (conditionT != BaseType.INT) {
					error("if condition doesn't evaluate to INT");
				}

				visit(i.stmt);

				if (i.elseStmt != null) {
					visit(i.elseStmt);
				}

				yield BaseType.NONE;
			}
			case Return r -> {

				switch (r.fd.type) {
					case BaseType.VOID -> {
						if (r.expr != null) {
							error("cannot return a value when function type is VOID");
							yield BaseType.NONE;
						}
					}
					case Type t -> {
						if (r.expr != null) {
							Type exprT = visit(r.expr);
							if (!Type.equals(exprT, t)) {
								error("return type doesn't match function type");
								yield BaseType.NONE;
							}
						} else {
							error("missing return value");
							yield BaseType.NONE;
						}
					}
				}

				yield BaseType.NONE;
			}

			case ExprStmt es -> {
				visit(es.expr);
				yield BaseType.NONE;
			}

			case Decl d -> {
				yield BaseType.UNKNOWN;
			}

			case Stmt s -> {
				yield BaseType.NONE;
			}

			case Type t -> {
				yield t;
			}
		};

	}

	private Type matchFunCallToFunDecl(FunCallExpr fce, FunDecl fd) {

		if (fd.params.size() != fce.args.size()) {
			error("number of function call args and declaration parameters do not match");
			return BaseType.UNKNOWN;
		}

		for (int i = 0; i < fd.params.size(); i++) {
			if (!Type.equals(fd.params.get(i).type, fce.args.get(i).type)) {
				error("function call args and declaration parameter types do not match");
				return BaseType.UNKNOWN;
			}
		}

		fce.type = fd.type;

		return fce.type;
	}
}
