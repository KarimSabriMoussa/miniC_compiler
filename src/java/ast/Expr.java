package ast;

public sealed abstract class Expr implements ASTNode
        permits VarExpr, AddressOfExpr, ArrayAccessExpr, Assign, BinOp, ChrLiteral, FieldAccessExpr, FunCallExpr, IntLiteral, SizeOfExpr, StrLiteral, TypecastExpr, ValueAtExpr {

    public Type type; 
}
