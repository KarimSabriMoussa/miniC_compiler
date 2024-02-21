package parser;

import ast.AddressOfExpr;
import ast.ArrayAccessExpr;
import ast.ArrayType;
import ast.Assign;
import ast.BaseType;
import ast.BinOp;
import ast.Block;
import ast.Break;
import ast.ChrLiteral;
import ast.Continue;
import ast.Decl;
import ast.Expr;
import ast.ExprStmt;
import ast.FieldAccessExpr;
import ast.FunCallExpr;
import ast.FunDecl;
import ast.FunProto;
import ast.If;
import ast.IntLiteral;
import ast.Op;
import ast.PointerType;
import ast.Program;
import ast.Return;
import ast.SizeOfExpr;
import ast.Stmt;
import ast.StrLiteral;
import ast.StructType;
import ast.StructTypeDecl;
import ast.Type;
import ast.TypeCastExpr;
import ast.ValueAtExpr;
import ast.VarDecl;
import ast.VarExpr;
import ast.While;
import lexer.Token;
import lexer.Token.Category;
import lexer.Tokeniser;
import util.CompilerPass;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

/**
 * @author cdubach
 */
public class Parser extends CompilerPass {

    private Token token;

    private Queue<Token> buffer = new LinkedList<>();

    private final Tokeniser tokeniser;

    private Category[] first_stmt = { Category.LBRA, Category.WHILE, Category.IF, Category.RETURN,
            Category.CONTINUE, Category.BREAK, Category.LPAR, Category.IDENTIFIER, Category.INT_LITERAL,
            Category.MINUS, Category.PLUS, Category.CHAR_LITERAL, Category.STRING_LITERAL, Category.ASTERISK,
            Category.AND, Category.SIZEOF };

    private Category[] first_exp = { Category.LPAR, Category.IDENTIFIER, Category.INT_LITERAL,
            Category.MINUS, Category.PLUS, Category.CHAR_LITERAL, Category.STRING_LITERAL, Category.ASTERISK,
            Category.AND, Category.SIZEOF };

    private Category[] unaryOp = { Category.PLUS, Category.MINUS };

    public Parser(Tokeniser tokeniser) {
        this.tokeniser = tokeniser;
    }

    public Program parse() {
        // get the first token
        nextToken();

        return parseProgram();
    }

    // private int error = 0;
    private Token lastErrorToken;

    private void error(Category... expected) {

        if (lastErrorToken == token) {
            // skip this error, same token causing trouble
            return;
        }

        StringBuilder sb = new StringBuilder();
        String sep = "";
        for (Category e : expected) {
            sb.append(sep);
            sb.append(e);
            sep = "|";
        }
        String msg = "Parsing error: expected (" + sb + ") found (" + token + ") at " + token.position;
        System.out.println(msg);

        incError();
        lastErrorToken = token;
    }

    /*
     * Look ahead the i^th element from the stream of token.
     * i should be >= 1
     */
    private Token lookAhead(int i) {
        // ensures the buffer has the element we want to look ahead
        while (buffer.size() < i)
            buffer.add(tokeniser.nextToken());

        int cnt = 1;
        for (Token t : buffer) {
            if (cnt == i)
                return t;
            cnt++;
        }

        assert false; // should never reach this
        return tokeniser.nextToken();
    }

    /*
     * Consumes the next token from the tokeniser or the buffer if not empty.
     */
    private void nextToken() {
        if (!buffer.isEmpty())
            token = buffer.remove();
        else
            token = tokeniser.nextToken();
    }

    /*
     * If the current token is equals to the expected one, then skip it, otherwise
     * report an error.
     */
    private Token expect(Category... expected) {
        for (Category e : expected) {
            if (e == token.category) {
                Token ret = token;
                nextToken();
                return ret;
            }
        }
        error(expected);
        return token;
    }

    /*
     * Returns true if the current token is equals to any of the expected ones.
     */
    private boolean accept(Category... expected) {
        for (Category e : expected) {
            if (e == token.category)
                return true;
        }
        return false;
    }

    /*
     * Returns true if the token's category is equal to any of the expected
     */
    private boolean acceptLookAhead(int i, Category... expected) {

        Token t = lookAhead(i);

        for (Category e : expected) {
            if (e == t.category) {
                return true;
            }
        }
        return false;
    }

    private Program parseProgram() {

        parseIncludes();

        List<Decl> decls = new ArrayList<>();

        while (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            if (accept(Category.STRUCT) &&
                    acceptLookAhead(1, Category.IDENTIFIER) &&
                    acceptLookAhead(2, Category.LBRA)) {
                decls.add(parseStructDecl());
            } else if ((accept(Category.INT, Category.CHAR, Category.VOID) && acceptLookAhead(1, Category.IDENTIFIER)
                    && acceptLookAhead(2, Category.LPAR))
                    || (accept(Category.STRUCT) && acceptLookAhead(1, Category.IDENTIFIER)
                            && acceptLookAhead(2, Category.IDENTIFIER)
                            && acceptLookAhead(3, Category.LPAR))) {
                decls.add(parseFunHeader());
            } else {
                decls.add(parseVarDecl());
            }
        }

        expect(Category.EOF);
        return new Program(decls);
    }

    // includes are ignored, so does not need to return an AST node
    private void parseIncludes() {

        if (accept(Category.INCLUDE)) {
            expect(Category.INCLUDE);
            expect(Category.STRING_LITERAL);
            parseIncludes();
        }
    }

    private StructTypeDecl parseStructDecl() {

        expect(Category.STRUCT);
        Token id = expect(Category.IDENTIFIER);
        expect(Category.LBRA);

        List<VarDecl> vds = parseMembers();

        expect(Category.RBRA);
        expect(Category.SC);

        StructType st = new StructType(id.data);

        return new StructTypeDecl(st, vds);
    }

    private List<VarDecl> parseMembers() {

        List<VarDecl> vds = new ArrayList<VarDecl>();

        vds.add(parseVarDecl());

        if (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            vds.addAll(parseMembers());
        }

        return vds;
    }

    private VarDecl parseVarDecl() {

        Type t = parseType();

        Token id = expect(Category.IDENTIFIER);

        while (accept(Category.LSBR)) {
            expect(Category.LSBR);
            Token arraySize = expect(Category.INT_LITERAL);
            expect(Category.RSBR);

            ArrayType at = new ArrayType(t, Integer.valueOf(arraySize.data));
            t = at;
        }

        expect(Category.SC);

        return new VarDecl(t, id.data);
    }

    private Decl parseFunHeader() {

        Decl decl = null;
        List<VarDecl> params = new ArrayList<>();

        Type t = parseType();
        Token id = expect(Category.IDENTIFIER);

        expect(Category.LPAR);

        params = parseParamList();

        expect(Category.RPAR);

        if (accept(Category.LBRA)) {
            Block b = parseBlock();
            decl = new FunDecl(t, id.data, params, b);
        } else if (accept(Category.SC)) {
            expect(Category.SC);
            decl = new FunProto(t, id.data, params);
        } else {
            error(Category.LBRA, Category.SC);
        }

        return decl;
    }

    private Type parseType() {

        Type t = null;

        if (accept(Category.STRUCT)) {
            expect(Category.STRUCT);
            Token id = expect(Category.IDENTIFIER);
            t = new StructType(id.data);
        } else if (accept(Category.INT)) {
            expect(Category.INT);
            t = BaseType.INT;
        } else if (accept(Category.CHAR)) {
            expect(Category.CHAR);
            t = BaseType.CHAR;
        } else if (accept(Category.VOID)) {
            expect(Category.VOID);
            t = BaseType.VOID;
        } else {
            error(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID);
        }

        while (accept(Category.ASTERISK)) {
            expect(Category.ASTERISK);
            PointerType pt = new PointerType(t);
            t = pt;
        }

        return t;
    }

    private List<VarDecl> parseParamList() {

        List<VarDecl> vds = new ArrayList<VarDecl>();

        if (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            vds.add(parseParam());
            vds.addAll(parseParamPrime());
        }

        return vds;
    }

    private List<VarDecl> parseParamPrime() {

        List<VarDecl> vds = new ArrayList<VarDecl>();

        if (accept(Category.COMMA)) {
            expect(Category.COMMA);

            vds.add(parseParam());
            vds.addAll(parseParamPrime());
        }

        return vds;
    }

    private VarDecl parseParam() {

        Type t = parseType();

        Token id = expect(Category.IDENTIFIER);

        while (accept(Category.LSBR)) {
            expect(Category.LSBR);
            Token arraySize = expect(Category.INT_LITERAL);
            expect(Category.RSBR);

            ArrayType at = new ArrayType(t, Integer.valueOf(arraySize.data));
            t = at;
        }

        return new VarDecl(t, id.data);
    }

    private Stmt parseStmt() {

        if (accept(Category.LBRA)) {
            return parseBlock();
        } else if (accept(Category.WHILE)) {
            return parseWhileLoop();
        } else if (accept(Category.IF)) {
            return parseIfStmt();
        } else if (accept(Category.RETURN)) {
            return parseReturnStmt();
        } else if (accept(Category.CONTINUE)) {
            return parseContinueStmt();
        } else if (accept(Category.BREAK)) {
            return parseBreakStmt();
        } else if (accept(first_exp)) {
            return parseExprStmt();
        }

        error();
        return null;
    }

    private Stmt parseWhileLoop() {

        expect(Category.WHILE);
        expect(Category.LPAR);

        Expr condition = parseExp();

        expect(Category.RPAR);

        Stmt stmt = parseStmt();

        return new While(condition, stmt);
    }

    private Stmt parseIfStmt() {

        Stmt elseStmt = null;

        expect(Category.IF);
        expect(Category.LPAR);

        Expr condition = parseExp();

        expect(Category.RPAR);

        Stmt stmt = parseStmt();

        if (accept(Category.ELSE)) {
            expect(Category.ELSE);

            elseStmt = parseStmt();
        }

        return new If(condition, stmt, elseStmt);
    }

    private Stmt parseReturnStmt() {

        Expr expr = null;

        expect(Category.RETURN);

        if (accept(first_exp)) {
            expr = parseExp();
        }

        expect(Category.SC);

        return new Return(expr);
    }

    private Stmt parseContinueStmt() {
        expect(Category.CONTINUE);
        expect(Category.SC);

        return new Continue();
    }

    private Stmt parseBreakStmt() {
        expect(Category.BREAK);
        expect(Category.SC);

        return new Break();
    }

    private Stmt parseExprStmt() {
        Expr expr = parseExp();
        expect(Category.SC);

        return new ExprStmt(expr);
    }

    private Block parseBlock() {

        List<VarDecl> vds = new ArrayList<VarDecl>();
        List<Stmt> stmts = new ArrayList<Stmt>();

        expect(Category.LBRA);

        while (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            vds.add(parseVarDecl());
        }

        while (accept(first_stmt)) {
            stmts.add(parseStmt());
        }

        expect(Category.RBRA);

        return new Block(vds, stmts);
    }

    private Expr parseExp() {

        Expr expr = parseAssignment();

        return expr;
    }

    private Expr parseAssignment() {

        Expr lhs = parseBinOp();

        if (accept(Category.ASSIGN)) {
            expect(Category.ASSIGN);

            Expr rhs = parseAssignment();

            return new Assign(lhs, rhs);
        }

        return lhs;

    }

    private Expr parseBinOp() {

        Expr lhs = parseOrOp();

        while (accept(Category.LOGOR)) {
            expect(Category.LOGOR);

            Expr rhs = parseOrOp();
            lhs = new BinOp(lhs, rhs, Op.OR);
        }

        return lhs;
    }

    private Expr parseOrOp() {

        Expr lhs = parseAndOp();

        while (accept(Category.LOGAND)) {
            expect(Category.LOGAND);

            Expr rhs = parseAndOp();
            lhs = new BinOp(lhs, rhs, Op.AND);
        }

        return lhs;
    }

    private Expr parseAndOp() {
        
        Expr lhs = parseRelEqualityOp();

        while (accept(Category.EQ, Category.NE)) {
            Token t = expect(Category.EQ, Category.NE);
            Op op = getOp(t);

            Expr rhs = parseRelEqualityOp();
            lhs = new BinOp(lhs, rhs, op);
        }

        return lhs;
    }

    private Expr parseRelEqualityOp() {
        Expr lhs = parseRelationalOp();

        while (accept(Category.GT, Category.GE, Category.LT, Category.LE)) {
            Token t = expect(Category.GT, Category.GE, Category.LT, Category.LE);
            Op op = getOp(t);

            Expr rhs = parseRelationalOp();
            lhs = new BinOp(lhs, rhs, op);
        }

        return lhs;
    }

    private Expr parseRelationalOp() {
        Expr lhs = parseTerm();

        while (accept(Category.PLUS, Category.MINUS)) {
            Token t = expect(Category.PLUS, Category.MINUS);
            Op op = getOp(t);

            Expr rhs = parseTerm();
            lhs = new BinOp(lhs, rhs, op);
        }

        return lhs;

    }

    private Expr parseTerm() {
        Expr lhs = parseFactor();

        while (accept(Category.DIV, Category.ASTERISK, Category.REM)) {
            Token t = expect(Category.DIV, Category.ASTERISK, Category.REM);
            Op op = getOp(t);

            Expr rhs = parseFactor();
            lhs = new BinOp(lhs, rhs, op);
        }

        return lhs;
    }

    private Expr parseFactor() {

        if (accept(unaryOp)) {
            Token t = expect(unaryOp);
            Op op = getOp(t);
            Expr rhs = parseFactor();
            return new BinOp(new IntLiteral(0), rhs, op);
        } else if (accept(Category.ASTERISK)) {
            expect(Category.ASTERISK);
            Expr rhs = parseFactor();
            return new ValueAtExpr(rhs);
        } else if (accept(Category.AND)) {
            expect(Category.AND);
            Expr rhs = parseFactor();
            return new AddressOfExpr(rhs);
        } else if ((accept(Category.LPAR)
                && acceptLookAhead(1, Category.STRUCT, Category.INT, Category.CHAR, Category.VOID))) {
            expect(Category.LPAR);
            Type type = parseType();
            expect(Category.RPAR);
            Expr rhs = parseFactor();
            return new TypeCastExpr(type, rhs);
        } else {
            return parseAccessExpr();
        }

    }

    private Expr parseAccessExpr() {
        Expr lhs = parseExprTerminals();
        while (accept(Category.LSBR, Category.DOT)) {
            if (accept(Category.LSBR)) {
                expect(Category.LSBR);
                Expr index = parseExp();
                expect(Category.RSBR);
                lhs = new ArrayAccessExpr(lhs, index);
            } else if (accept(Category.DOT)) {
                expect(Category.DOT);
                Token id = expect(Category.IDENTIFIER);
                lhs = new FieldAccessExpr(lhs, id.data);
            }
        }

        return lhs;
    }

    private Expr parseExprTerminals() {

        if (accept(Category.IDENTIFIER) && acceptLookAhead(1, Category.LPAR)) {
            Token id = expect(Category.IDENTIFIER);
            expect(Category.LPAR);

            List<Expr> args = parseArgList();

            expect(Category.RPAR);

            return new FunCallExpr(id.data, args);
        } else if (accept(Category.IDENTIFIER)) {
            Token t = expect(Category.IDENTIFIER);
            return new VarExpr(t.data);
        } else if (accept(Category.INT_LITERAL)) {
            Token t = expect(Category.INT_LITERAL);
            return new IntLiteral(Integer.valueOf(t.data));
        } else if (accept(Category.CHAR_LITERAL)) {
            Token t = expect(Category.CHAR_LITERAL);
            return new ChrLiteral(t.data.charAt(0));
        } else if (accept(Category.STRING_LITERAL)) {
            Token t = expect(Category.STRING_LITERAL);
            return new StrLiteral(t.data);
        } else if (accept(Category.SIZEOF)) {
            expect(Category.SIZEOF);
            expect(Category.LPAR);
            Type type = parseType();
            expect(Category.RPAR);

            return new SizeOfExpr(type);
        } else if (accept(Category.LPAR)) {
            expect(Category.LPAR);
            Expr expr = parseExp();
            expect(Category.RPAR);
            return expr;
        } else {
            error();
            return null;
        }
    }

    private List<Expr> parseArgList() {

        List<Expr> args = new ArrayList<Expr>();

        if (accept(first_exp)) {
            args.add(parseExp());
            while (accept(Category.COMMA)) {
                expect(Category.COMMA);
                args.add(parseExp());
            }
        }

        return args;
    }

    private Op getOp(Token t) {
        if (t != null && t.category != null) {
            switch (t.category) {
                case PLUS:
                    return Op.ADD;
                case MINUS:
                    return Op.SUB;
                case ASTERISK:
                    return Op.MUL;
                case DIV:
                    return Op.DIV;
                case REM:
                    return Op.MOD;
                case GT:
                    return Op.GT;
                case LT:
                    return Op.LT;
                case GE:
                    return Op.GE;
                case LE:
                    return Op.LE;
                case NE:
                    return Op.NE;
                case EQ:
                    return Op.EQ;
                case LOGOR:
                    return Op.OR;
                case LOGAND:
                    return Op.AND;
                default:
                    return null;
            }
        }
        return null;
    }

}
