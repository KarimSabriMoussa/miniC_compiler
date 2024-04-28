package sem; 

import ast.*;

public class NameAnalyzer extends BaseSemanticAnalyzer {

	private Scope currScope;

	public void visit(ASTNode node) {
		switch (node) {
			case null -> {
				throw new IllegalStateException("Unexpected null value");
			}

			case Block b -> {

				Scope oldScope = currScope;
				currScope = new Scope(oldScope);

				for (ASTNode child : b.children()) {
					visit(child);
				}
				currScope = oldScope;
			}

			case ClassDecl cd -> {

				Symbol symbol = currScope.lookupCurrent(cd.name);

				if (symbol == null) {

					if (cd.parentType != null) {
						String parentName = getClassTypeName(cd.parentType);
						Symbol parentSymbol = currScope.lookupCurrent(parentName);

						if (parentSymbol == null) {
							error("parent class declaration missing");
						}
					}

					currScope.put(new ClassDeclSymbol(cd));
				} else {
					error("duplicate class declaration");
				}

			}

			case FunDecl fd -> {

				Symbol symbol = currScope.lookupCurrent(fd.name);

				switch (symbol) {
					case null -> {

						currScope.put(new FunDeclSymbol(fd));

						Scope oldScope = currScope;
						currScope = new Scope(oldScope);

						for (ASTNode child : fd.children()) {
							visit(child);
						}

						currScope = oldScope;

					}
					case FunProtoSymbol fps -> {
						Scope oldScope = currScope;
						currScope = new Scope(oldScope);

						for (ASTNode child : fd.children()) {
							visit(child);
						}

						currScope = oldScope;
					}
					default -> error("duplicate declaration");
				}
			}

			case FunProto fp -> {

				Symbol symbol = currScope.lookupCurrent(fp.name);

				switch (symbol) {
					case null -> {
						currScope.put(new FunProtoSymbol(fp));

						Scope oldScope = currScope;
						currScope = new Scope(oldScope);

						for (ASTNode child : fp.children()) {
							visit(child);
						}

						currScope = oldScope;
					}
					case FunDeclSymbol fps -> {
						Scope oldScope = currScope;
						currScope = new Scope(oldScope);

						for (ASTNode child : fp.children()) {
							visit(child);
						}

						currScope = oldScope;
					}
					default -> error("duplicate declaration");
				}

			}

			case VarDecl vd -> {

				Symbol symbol = currScope.lookupCurrent(vd.name);

				if (symbol == null) {
					visit(vd.type);
					currScope.put(new VarDeclSymbol(vd));
				} else {
					error("duplicate declaration");
				}
			}

			case StructTypeDecl std -> {

				Symbol symbol = currScope.lookupCurrent(std.name);

				if (symbol == null) {
					currScope.put(new StructTypeDeclSymbol(std));

					Scope oldScope = currScope;
					currScope = new Scope(oldScope);

					for (ASTNode child : std.children()) {
						visit(child);
					}

					currScope = oldScope;
				} else {
					error("duplicate struct declaration");
				}

			}

			case FunCallExpr fce -> {

				Symbol symbol = currScope.lookup(fce.name);

				switch (symbol) {
					case FunProtoSymbol fps -> {
						for (ASTNode child : fce.children()) {
							visit(child);
						}
					}

					case FunDeclSymbol fds -> {
						for (ASTNode child : fce.children()) {
							visit(child);
						}
					}

					case null, default -> {
						error("missing function declaration");
					}
				}

			}

			case VarExpr ve -> {
				Symbol symbol = currScope.lookup(ve.name);

				switch (symbol) {
					case VarDeclSymbol vds -> {
						ve.vd = vds.vd;
					}

					case null, default -> {
						error("missing variable declaration");
					}
				}
			}

			case StructType st -> {

				String name = getStructTypeName(st);

				Symbol symbol = currScope.lookup(name);

				switch (symbol) {
					case StructTypeDeclSymbol stds -> {
						st.std = stds.std;
					}

					case null, default -> {
						error("missing struct declaration");
					}
				}

			}

			case ClassType ct -> {

				String name = getClassTypeName(ct);

				Symbol symbol = currScope.lookup(name);

				switch (symbol) {
					case ClassDeclSymbol cds -> {
						ct.cd = cds.cd;
					}

					case null, default -> {
						error("missing class declaration");
					}
				}
			}

			case NewInstance ni -> {
				visit(ni.classType);
			}

			case InstanceFunCallExpr ifce -> {
				visit(ifce.classInstance);

				for(ASTNode vd: ifce.classFuncCall.children()){
					visit(vd);
				}
			}

			case Expr e -> {
				for (ASTNode child : e.children()) {
					visit(child);
				}
			}

			case Stmt s -> {
				for (ASTNode child : s.children()) {
					visit(child);
				}
			}

			case Type t -> {
				for (ASTNode child : t.children()) {
					visit(child);
				}
			}

			case Program p -> {

				currScope = new Scope();

				for (ASTNode child : p.children()) {
					visit(child);
				}
			}

		}

	}

	private String getStructTypeName(StructType st) {
		return "struct " + st.name;
	}

	private String getClassTypeName(ClassType ct) {
		return "class " + ct.name;
	}

}
