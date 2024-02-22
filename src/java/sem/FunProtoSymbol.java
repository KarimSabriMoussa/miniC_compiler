package sem;

import ast.FunProto;

public class FunProtoSymbol extends Symbol{

    FunProto fp;

    public FunProtoSymbol(FunProto fp) {
        super(fp.name);
        this.fp = fp;
    }

}
