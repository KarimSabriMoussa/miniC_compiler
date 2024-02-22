package ast;

import java.util.List;
import java.util.ArrayList;

public final class Break extends Stmt {

    @Override
    public List<ASTNode> children() {
        return new ArrayList<ASTNode>();
    }
    
}
