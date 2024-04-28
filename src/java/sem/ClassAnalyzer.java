package sem;

import java.util.Map;
import java.util.HashMap;
import ast.*;

public class ClassAnalyzer extends BaseSemanticAnalyzer {

    private Scope currScope;
    private Map<String, ClassDecl> classes;
    private ClassDecl currClass;

    public ClassAnalyzer() {
        this.classes = new HashMap<String, ClassDecl>();
    }

    public void visit(ASTNode node) {
        switch (node) {
            case null -> {
                throw new IllegalStateException("Unexpected null value");
            }
            case ClassDecl cd -> {

                Symbol symbol = currScope.lookupCurrent(cd.name);

                if (symbol == null) {

                    Symbol parentSymbol = null;

                    if (cd.parentType != null) {
                        String parentName = getClassTypeName(cd.parentType);
                        parentSymbol = currScope.lookupCurrent(parentName);

                        if (parentSymbol == null) {
                            error("parent class declaration missing");
                        }
                    }

                    currScope.put(new ClassDeclSymbol(cd));
                    classes.put(cd.name, cd);

                    Scope oldScope = currScope;
                    currScope = new Scope(oldScope);

                    if (cd.parentType != null && parentSymbol != null) {
                        addAncestorFieldsToCurrScope(cd);
                        addAncestorFuncsToCurrScope(cd);
                    }

                    currClass = cd;

                    for (ASTNode child : cd.children()) {
                        visit(child);
                    }

                    currClass = null;

                    currScope = oldScope;

                } else {
                    error("duplicate class declaration");
                }

            }

            case VarDecl vd -> {

                if (currClass != null) {
                    Symbol symbol = currScope.lookupCurrent(vd.name);

                    if (symbol == null) {
                        visit(vd.type);
                        currScope.put(new VarDeclSymbol(vd));
                    } else {
                        error("duplicate declaration");
                    }
                }

            }

            case FunDecl fd -> {

                if (currClass != null) {
                    Symbol symbol = currScope.lookupCurrent(fd.name);

                    if (symbol == null) {
                        visit(fd.type);
                        currScope.put(new FunDeclSymbol(fd));

                        Scope oldScope = currScope;
                        currScope = new Scope(oldScope);

                        for (ASTNode child : fd.children()) {
                            visit(child);
                        }

                        currScope = oldScope;
                    } else {
                        visit(fd.type);
                        checkOverRiddenFunctions(currClass, fd);

                        Scope oldScope = currScope;
                        currScope = new Scope(oldScope);

                        for (ASTNode child : fd.children()) {
                            visit(child);
                        }

                        currScope = oldScope;
                    }

                }
            }

            case FunCallExpr fce -> {

                if (currClass != null) {

                    Symbol symbol = currScope.lookup(fce.name);

                    switch (symbol) {
                        case FunDeclSymbol fds -> {
                            for (ASTNode child : fce.children()) {
                                visit(child);
                            }

                            assignClassFunDeclToCall(fce, currClass);
                        }

                        case null, default -> {
                            for (ASTNode child : fce.children()) {
                                visit(child);
                            }
                        }
                    }

                }

            }

            case VarExpr ve -> {

                if (currClass != null) {
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
            case ASTNode n -> {
                for (ASTNode child : n.children()) {
                    visit(child);
                }
            }
        }
    }

    private void assignClassFunDeclToCall(FunCallExpr fce, ClassDecl cd) {
        ClassDecl currClass = cd;

        while (currClass != null) {
            String parentClassName = getClassTypeName(cd.parentType);
            ClassDecl parent = classes.get(parentClassName);

            for (FunDecl fd : currClass.funDecls) {
                if (fd.name.equals(fce.name)) {
                    fce.fd = fd;
                    return;
                }
            }

            currClass = parent;
        }
    }

    private void checkOverRiddenFunctions(ClassDecl cd, FunDecl fd) {

        ClassDecl currClass = cd;

        while (currClass.parentType != null) {
            String parentClassName = getClassTypeName(cd.parentType);
            ClassDecl parent = classes.get(parentClassName);

            if (parent == null) {
                error("parent class declaration missing");
                break;
            }

            for (FunDecl parentFd : parent.funDecls) {
                if (parentFd.name.equals(fd.name)) {
                    compareFunctionDecls(parentFd, fd);
                }
            }

            currClass = parent;
        }

    }

    private void compareFunctionDecls(FunDecl parentFd, FunDecl fd) {
        if (parentFd.params.size() != fd.params.size()) {
            error("number of overriden function and parent declaration parameters do not match");
            return;
        }

        if (!Type.equals(parentFd.type, fd.type)) {
            error("overriden function and parent declaration return types do not match");
            return;
        }

        for (int i = 0; i < fd.params.size(); i++) {
            if (!(Type.equals(parentFd.params.get(i).type, fd.params.get(i).type)
                    && parentFd.params.get(i).name.equals(fd.params.get(i).name))) {
                error("overriden function and parent declaration parameter types do not match");
                return;
            }
        }
    }

    private void addAncestorFieldsToCurrScope(ClassDecl cd) {

        ClassDecl currClass = cd;

        while (currClass.parentType != null) {
            String parentClassName = getClassTypeName(cd.parentType);
            ClassDecl parent = classes.get(parentClassName);

            if (parent == null) {
                error("parent class declaration missing");
                break;
            }

            for (VarDecl vd : parent.vds) {
                currScope.put(new VarDeclSymbol(vd));
            }

            currClass = parent;
        }
    }

    private void addAncestorFuncsToCurrScope(ClassDecl cd) {

        ClassDecl currClass = cd;

        while (currClass.parentType != null) {
            String parentClassName = getClassTypeName(cd.parentType);
            ClassDecl parent = classes.get(parentClassName);
            
            if (parent == null) {
                error("parent class declaration missing");
                break;
            }
            
            for (FunDecl fd : parent.funDecls) {
                currScope.put(new FunDeclSymbol(fd));
            }

            currClass = parent;
        }
    }

    private String getClassTypeName(ClassType ct) {
        return "class " + ct.name;
    }

    private String getStructTypeName(StructType st) {
        return "struct " + st.name;
    }
}
