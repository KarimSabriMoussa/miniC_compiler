package ast;

import java.io.PrintWriter;

public class ASTPrinter {

    private final PrintWriter writer;
    private String comma = ",";

    public ASTPrinter(PrintWriter writer) {
        this.writer = writer;
    }

    public void visit(ASTNode node) {
        switch (node) {
            case null -> {
                throw new IllegalStateException("Unexpected null value");
            }

            case AddressOfExpr aoe -> {
                writer.print("AddressOfExpr(");
                visit(aoe.expr);
                writer.print(")");
            }

            case ArrayAccessExpr aae -> {
                writer.print("ArrayAccessExpr(");
                visit(aae.array);
                writer.print(comma);
                visit(aae.index);
                writer.print(")");
            }

            case ArrayType at -> {
                writer.print("ArrayType(");
                visit(at.type);
                writer.print(comma);
                writer.print(at.arraySize);
                writer.print(")");
            }

            case Assign a -> {
                writer.print("Assign(");
                visit(a.variable);
                writer.print(comma);
                visit(a.value);
                writer.print(")");
            }

            case BaseType bt -> {
                writer.print(bt.toString());
            }

            case BinOp bo -> {
                writer.print("BinOp(");
                visit(bo.leftOperand);
                writer.print(comma + bo.op.toString() + comma);
                visit(bo.rightOperand);
                writer.print(")");
            }

            case Block b -> {
                writer.print("Block(");
                String delimiter = "";

                for (VarDecl vd : b.vds) {
                    writer.print(delimiter);
                    delimiter = comma;
                    visit(vd);
                }

                for (Stmt stmt : b.stmts) {
                    writer.print(delimiter);
                    delimiter = comma;
                    visit(stmt);
                }
                writer.print(")");
            }

            case Break b -> {
                writer.print("Break()");
            }

            case ChrLiteral cl -> {
                writer.print("ChrLiteral(");
                writer.print(cl.chr);
                writer.print(")");
            }

            case Continue c -> {
                writer.print("Continue()");
            }

            case ExprStmt es -> {
                writer.print("ExprStmt(");
                visit(es.expr);
                writer.print(")");
            }

            case FieldAccessExpr fae -> {
                writer.print("FieldAccessExpr(");
                visit(fae.struct);
                writer.print(comma);
                writer.print(fae.member);
                writer.print(")");
            }

            case FunCallExpr fce -> {

                writer.print("FunCallExpr(");
                writer.print(fce.name);
                for (Expr arg : fce.args) {
                    writer.print(comma);
                    visit(arg);
                }
                writer.print(")");
            }

            case FunDecl fd -> {
                writer.print("FunDecl(");
                visit(fd.type);
                writer.print(comma + fd.name);
                for (VarDecl param : fd.params) {
                    writer.print(comma);
                    visit(param);
                }
                writer.print(comma);
                visit(fd.block);
                writer.print(")");
            }

            case FunProto fp -> {
                writer.print("FunProto(");
                visit(fp.type);
                writer.print(comma + fp.name);
                for (VarDecl param : fp.params) {
                    writer.print(comma);
                    visit(param);
                }
                writer.print(")");
            }

            case If i -> {
                writer.print("If(");
                visit(i.condition);
                writer.print(comma);
                visit(i.stmt);
                if (i.elseStmt != null) {
                    writer.print(comma);
                    visit(i.elseStmt);
                }
                writer.print(")");
            }

            case IntLiteral il -> {
                writer.print("IntLiteral(" + il.value + ")");
            }

            case PointerType pt -> {
                writer.print("PointerType(");
                visit(pt.type);
                writer.print(")");
            }

            case Program p -> {
                writer.print("Program(");
                String delimiter = "";
                for (Decl d : p.decls) {
                    writer.print(delimiter);
                    delimiter = comma;
                    visit(d);
                }
                writer.print(")");
                writer.flush();
            }

            case Return r -> {
                writer.print("Return(");
                if (r.expr != null) {
                    visit(r.expr);
                }
                writer.print(")");
            }

            case SizeOfExpr soe -> {
                writer.print("SizeOfExpr(");
                visit(soe.type);
                writer.print(")");
            }

            case StrLiteral sl -> {
                writer.print("StrLiteral(" + sl.str + ")");
            }

            case StructType st -> {
                writer.print("StructType(");
                writer.print(st.name);
                writer.print(")");
            }

            case StructTypeDecl std -> {
                writer.print("StructTypeDecl(");
                visit(std.structType);
                for (ASTNode n : std.vds) {
                    writer.print(comma);
                    visit(n);
                }
                writer.print(")");
            }

            case TypeCastExpr tce -> {
                writer.print("TypeCastExpr(");
                visit(tce.type);
                writer.print(comma);
                visit(tce.expr);
                writer.print(")");
            }

            case ValueAtExpr vae -> {
                writer.print("TypeCastExpr(");
                visit(vae.expr);
                writer.print(")");
            }

            case VarDecl vd -> {
                writer.print("VarDecl(");
                visit(vd.type);
                writer.print(comma + vd.name);
                writer.print(")");
            }

            case VarExpr v -> {
                writer.print("VarExpr(");
                writer.print(v.name);
                writer.print(")");
            }

            case While w -> {
                writer.print("While(");
                visit(w.condition);
                writer.print(comma);
                visit(w.stmt);
                writer.print(")");
            }
        }

    }

}
