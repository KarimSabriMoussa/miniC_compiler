package parser;

import lexer.Token;
import lexer.Token.Category;
import lexer.Tokeniser;
import util.CompilerPass;

import java.util.LinkedList;
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

    private Category[] first_binop = { Category.GT, Category.LT, Category.LE, Category.GE, Category.NE,
            Category.EQ, Category.PLUS, Category.MINUS, Category.DIV, Category.ASTERISK, Category.REM,
            Category.LOGOR, Category.LOGAND };

    public Parser(Tokeniser tokeniser) {
        this.tokeniser = tokeniser;
    }

    public void parse() {
        // get the first token
        nextToken();

        parseProgram();
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
    private void expect(Category... expected) {
        for (Category e : expected) {
            if (e == token.category) {
                nextToken();
                return;
            }
        }
        error(expected);
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

    private void parseProgram() {

        parseIncludes();

        while (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            if (accept(Category.STRUCT) &&
                    acceptLookAhead(1, Category.IDENTIFIER) &&
                    acceptLookAhead(2, Category.LBRA)) {
                parseStructDecl();
            } else if ((acceptLookAhead(1, Category.IDENTIFIER) && acceptLookAhead(2, Category.LPAR))
                    || (acceptLookAhead(1, Category.IDENTIFIER) && acceptLookAhead(2, Category.IDENTIFIER)
                            && acceptLookAhead(3, Category.LPAR))) {
                parseFunHeader();
            } else {
                parseVarDecl();
            }
        }

        expect(Category.EOF);
    }

    // includes are ignored, so does not need to return an AST node
    private void parseIncludes() {

        if (accept(Category.INCLUDE)) {
            expect(Category.INCLUDE);
            expect(Category.STRING_LITERAL);
            parseIncludes();
        }
    }

    private void parseStructDecl() {

        expect(Category.STRUCT);
        expect(Category.IDENTIFIER);
        expect(Category.LBRA);

        parseMembers();

        expect(Category.RBRA);
        expect(Category.SC);
    }

    private void parseMembers() {

        parseVarDecl();

        if (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            parseMembers();
        }
    }

    private void parseVarDecl() {

        parseType();

        expect(Category.IDENTIFIER);

        while (accept(Category.LSBR)) {
            expect(Category.LSBR);
            expect(Category.INT_LITERAL);
            expect(Category.RSBR);
        }

        expect(Category.SC);
    }

    private void parseFunHeader() {

        parseType();

        expect(Category.IDENTIFIER);
        expect(Category.LPAR);

        parseParamList();

        expect(Category.RPAR);

        parseFunTail();
    }

    private void parseFunTail() {

        if (accept(Category.LBRA)) {
            parseBlock();
        } else if (accept(Category.SC)) {
            expect(Category.SC);
        } else {
            error(Category.LBRA, Category.SC);
        }
    }

    private void parseType() {

        if (accept(Category.STRUCT)) {
            expect(Category.STRUCT);
            expect(Category.IDENTIFIER);
        } else if (accept(Category.INT, Category.CHAR, Category.VOID)) {
            expect(Category.INT, Category.CHAR, Category.VOID);
        } else {
            error(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID);
        }

        while (accept(Category.ASTERISK)) {
            expect(Category.ASTERISK);
        }

    }

    private void parseParamList() {

        if (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            parseParam();
            parseParamPrime();
        }
    }

    private void parseParamPrime() {

        if (accept(Category.COMMA)) {
            expect(Category.COMMA);

            parseParam();
            parseParamPrime();
        }
    }

    private void parseParam() {

        parseType();

        expect(Category.IDENTIFIER);

        while (accept(Category.LSBR)) {
            expect(Category.LSBR);
            expect(Category.INT_LITERAL);
            expect(Category.RSBR);
        }
    }

    private void parseStmt() {

        if (accept(Category.LBRA)) {
            parseBlock();
        } else if (accept(Category.WHILE)) {
            parseWhileLoop();
        } else if (accept(Category.IF)) {
            parseIfStmt();
        } else if (accept(Category.RETURN)) {
            parseReturnStmt();
        } else if (accept(Category.CONTINUE)) {
            expect(Category.CONTINUE);
            expect(Category.SC);
        } else if (accept(Category.BREAK)) {
            expect(Category.BREAK);
            expect(Category.SC);
        } else if (accept(first_exp)) {
            parseExp();
            expect(Category.SC);
        } else {
            error();
        }
    }

    private void parseWhileLoop() {

        expect(Category.WHILE);
        expect(Category.LPAR);

        parseExp();

        expect(Category.RPAR);

        parseStmt();
    }

    private void parseIfStmt() {

        expect(Category.IF);
        expect(Category.LPAR);

        parseExp();

        expect(Category.RPAR);

        parseStmt();

        if (accept(Category.ELSE)) {
            expect(Category.ELSE);

            parseStmt();
        }
    }

    private void parseReturnStmt() {

        expect(Category.RETURN);

        if (!accept(Category.SC)) {
            parseExp();
        }

        expect(Category.SC);
    }

    private void parseBlock() {

        expect(Category.LBRA);

        while (accept(Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            parseVarDecl();
        }

        while (accept(first_stmt)) {
            parseStmt();
        }

        expect(Category.RBRA);
    }

    private void parseExp() {

        if (accept(Category.INT_LITERAL, Category.CHAR_LITERAL, Category.STRING_LITERAL)
                || (accept(Category.IDENTIFIER) && !acceptLookAhead(1, Category.LPAR))) {
            expect(Category.INT_LITERAL, Category.CHAR_LITERAL, Category.STRING_LITERAL, Category.IDENTIFIER);
            parseExpPrime();
        } else if (accept(Category.LPAR)
                && acceptLookAhead(1, first_exp)) {
            expect(Category.LPAR);
            parseExp();
            expect(Category.RPAR);
            parseExpPrime();
        } else if (accept(Category.PLUS, Category.MINUS)) {
            expect(Category.PLUS, Category.MINUS);
            parseExp();
            parseExpPrime();
        } else if (accept(Category.IDENTIFIER) && acceptLookAhead(1, Category.LPAR)) {
            parseFunCall();
            parseExpPrime();
        } else if (accept(Category.ASTERISK)) {
            parseValueAt();
            parseExpPrime();
        } else if (accept(Category.AND)) {
            parseAddressOf();
            parseExpPrime();
        } else if (accept(Category.SIZEOF)) {
            parseSizeOf();
            parseExpPrime();
        } else if (accept(Category.LPAR)
                && acceptLookAhead(1, Category.STRUCT, Category.INT, Category.CHAR, Category.VOID)) {
            parseTypeCast();
            parseExpPrime();
        } else {
            error();
        }
    }

    private void parseFunCall() {

        expect(Category.IDENTIFIER);
        expect(Category.LPAR);

        parseArgList();

        expect(Category.RPAR);
    }

    private void parseValueAt() {

        expect(Category.ASTERISK);
        parseExp();
    }

    private void parseTypeCast() {

        expect(Category.LPAR);
        parseType();
        expect(Category.RPAR);
        parseExp();
    }

    private void parseSizeOf() {

        expect(Category.SIZEOF);
        expect(Category.LPAR);
        parseType();
        expect(Category.RPAR);
    }

    private void parseAddressOf() {

        expect(Category.AND);
        parseExp();
    }

    private void parseArgList() {

        if (accept(first_exp)) {
            parseExp();
            while (accept(Category.COMMA)) {
                expect(Category.COMMA);
                parseExp();
            }
        }
    }

    private void parseExpPrime() {

        if (accept(Category.ASSIGN)) {
            parseAssign();
            parseExpPrime();
        } else if (accept(first_binop)) {
            parseBinaryOp();
            parseExpPrime();
        } else if (accept(Category.LSBR)) {
            parseArrayAccess();
            parseExpPrime();
        } else if (accept(Category.DOT)) {
            parseFieldAccess();
            parseExpPrime();
        }
    }

    private void parseAssign() {

        expect(Category.ASSIGN);
        parseExp();
    }

    private void parseBinaryOp() {

        expect(first_binop);
        parseExp();
    }

    private void parseArrayAccess() {

        expect(Category.LSBR);
        parseExp();
        expect(Category.RSBR);
    }

    private void parseFieldAccess() {

        expect(Category.DOT);
        expect(Category.IDENTIFIER);
    }

}
