package ast;

import java.util.List;
import java.util.Arrays;

public final class FieldAccessExpr extends Expr {

    public Expr struct;
    public String member;
    public StructType st;

    public FieldAccessExpr(Expr struct, String member) {
        this.struct = struct;
        this.member = member;
    }

    @Override
    public List<ASTNode> children() {
        return Arrays.asList(struct);
    }

    public VarDecl getMember(String member) {
        for (VarDecl m : st.std.vds) {
            if (m.name.equals(member)) {
                return m;
            }
        }

        return null;
    }

}
