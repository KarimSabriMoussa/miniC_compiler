package sem;

import java.util.HashMap;
import java.util.Map;
import java.util.List;
import java.util.ArrayList;

import ast.*;

public class FunAnalyzer extends BaseSemanticAnalyzer {

    Map<String, FunProto> prototypes;
    Map<String, FunDecl> decls;
    Map<String, Return> returns;
    List<FunCallExpr> calls;
    FunDecl currDecl;

    public FunAnalyzer() {
        this.prototypes = new HashMap<>();
        this.decls = new HashMap<>();
        this.returns = new HashMap<>();
        this.calls = new ArrayList<>();
    }

    public void visit(ASTNode node) {
        switch (node) {
            case null -> {
                throw new IllegalStateException("Unexpected null value");
            }
            case FunProto fp -> {
                prototypes.put(fp.name, fp);
            }
            case FunDecl fd -> {
                decls.put(fd.name, fd);
                currDecl = fd;

                for (ASTNode child : fd.block.children()) {
                    visit(child);
                }
            }
            case FunCallExpr fce -> {
                calls.add(fce);
            }
            case Return r -> {
                r.fd = currDecl;
                returns.put(r.fd.name, r);
            }
            case Program p -> {
                for (ASTNode child : p.children()) {
                    visit(child);
                }
                matchFunProtoToFunDecl();
                assignFunDeclToCall();
                checkReturnStmt();
            }
            case ASTNode n -> {
                for (ASTNode child : n.children()) {
                    visit(child);
                }
            }
        }
    }

    private void checkReturnStmt() {

        for (FunDecl fd : decls.values()) {
            if (fd.type != BaseType.VOID) {
                if (returns.get(fd.name) == null) {
                    error("missing return statement");
                }
            }
        }
    }

    private void assignFunDeclToCall() {

        for (FunCallExpr fce : calls) {
            fce.fd = decls.get(fce.name);
        }
    }

    private void matchFunProtoToFunDecl() {

        for (String name : prototypes.keySet()) {
            if (!decls.containsKey(name)) {
                error("missing function decleration for a prototype");
            } else {

                FunDecl fd = decls.get(name);
                FunProto fp = prototypes.get(name);

                if (fd.params.size() != fp.params.size()) {
                    error("number of function prototype and decleration parameters do not match");
                }

                if (!Type.equals(fd.type, fp.type)) {
                    error("function prototype and decleration return types do not match");
                }

                for (int i = 0; i < fd.params.size(); i++) {
                    if (!Type.equals(fd.params.get(i).type, fp.params.get(i).type)) {
                        error("function prototype and decleration parameter types do not match");
                        break;
                    }
                }
            }
        }
    }
}
