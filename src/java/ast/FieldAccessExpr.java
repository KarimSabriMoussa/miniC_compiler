package ast;

import java.util.List;
import java.util.Arrays;

public final class FieldAccessExpr extends Expr {

    public Expr target;
    public String field;
    public StructType st;
    public ClassType ct;

    public FieldAccessExpr(Expr target, String field) {
        this.target = target;
        this.field = field;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(target);
    }

    public VarDecl getField(String field) {
        for (VarDecl f : st.std.vds) {
            if (f.name.equals(field)) {
                return f;
            }
        }

        return null;
    }

}
