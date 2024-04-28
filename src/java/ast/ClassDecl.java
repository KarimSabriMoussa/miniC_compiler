package ast;

import java.util.ArrayList;
import java.util.List;

public final class ClassDecl extends Decl {

    public ClassType classType;
    public ClassType parentType;

    public List<VarDecl> vds;
    public List<FunDecl> funDecls;

    public ClassDecl(ClassType classType, ClassType parentType, List<VarDecl> vds, List<FunDecl> funDecls) {
        this.name = "class " + classType.name;
        this.type = classType;
        this.classType = classType;
        this.parentType = parentType;
        this.vds = vds;
        this.funDecls = funDecls;
    }

    public List<ASTNode> children() {
        List<ASTNode> children = new ArrayList<>(); 
        children.add(classType); 
        children.addAll(vds);
        children.addAll(funDecls);

        return children;
    }

}
