package sem;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ast.*;

public class FunProtoAnalyzer extends BaseSemanticAnalyzer {

    Map<String, FunProto> prototypes;
    Map<String, FunDecl> decls;

    public FunProtoAnalyzer() {
        this.prototypes = new HashMap<>();
        this.decls = new HashMap<>();
    }

    public void visit(ASTNode node) {
        switch (node) {
            case null -> {

            }
            case FunProto fp -> {
                prototypes.put(fp.name, fp);
            }
            case FunDecl fd -> {
                decls.put(fd.name, fd);
            }
            case Program p -> {
                for (ASTNode child : p.children()) {
                    visit(child);
                }

                matchFunProtoToFunDecl();
            }
            case ASTNode n -> {
                for (ASTNode child : n.children()) {
                    visit(child);
                }
            }
        }
    }

    private void matchFunProtoToFunDecl() {

        for (String name : prototypes.keySet()) {
            if (!decls.containsKey(name)) {
                error("missing function decleration for a prototype");
            }else{

                FunDecl fd = decls.get(name);
                FunProto fp = prototypes.get(name);
        
                if(fd.params.size() != fp.params.size()){
                    error("function prototype and decleration parameters do not match");
                }

                if(!Type.equals(fd.type, fp.type)){
                    error("function prototype and decleration return types do not match");
                }

                for(int i = 0 ; i < fd.params.size();i++){
                    if(!Type.equals(fd.params.get(i).type, fp.params.get(i).type)){
                        error("function prototype and decleration parameter types do not match");
                        break;
                    }
                }
            }
        }
    }
}
