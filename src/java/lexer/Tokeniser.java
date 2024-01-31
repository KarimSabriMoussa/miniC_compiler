package lexer;

import util.CompilerPass;

/**
 * @author cdubach
 */
public class Tokeniser extends CompilerPass {

    private Scanner scanner;

    private String specialCharWithoutSingleQuote = "`~@!$#^*%&()[]{}<>+=_-|/;:,.?\"";
    private String specialCharWithoutDoubleQuote = "`~@!$#^*%&()[]{}<>+=_-|/;:,.?'";
    private String escapedChar = "abnrt\\'\"0";

    public Tokeniser(Scanner scanner) {
        this.scanner = scanner;
    }

    private void error(char c, int line, int col) {
        String msg = "Lexing error: unrecognised character (" + c + ") at " + line + ":" + col;
        System.out.println(msg);
        incError();
    }

    public Token nextToken() {

        int line = scanner.getLine();
        int column = scanner.getColumn();

        if (!scanner.hasNext())
            return new Token(Token.Category.EOF, scanner.getLine(), scanner.getColumn());

        // get the next character
        char c = scanner.next();

        // skip white spaces between lexems
        if (Character.isWhitespace(c))
            return nextToken();

        // skip single line comments to the end of the line
        if (c == '/') {
            c = scanner.peek();
            if (c == '/') {
                scanner.next();
                while (scanner.hasNext()) {
                    c = scanner.next();
                    if (c == '\n') {
                        return nextToken();
                    }
                }
            } else {
                c = '/';
            }
        }

        // skip multi line comments to their end
        if (c == '/') {
            c = scanner.peek();
            if (c == '*') {
                scanner.next();
                while (scanner.hasNext()) {
                    c = scanner.next();
                    if (c == '*') {
                        c = scanner.peek();
                        if (c == '/') {
                            scanner.next();
                            return nextToken();
                        }
                    }
                }

                error(c, line, column);
                return new Token(Token.Category.INVALID, line, column);
            }
        }

        /*
         * recognising identifiers, keywords and types
         * 
         * keywords:
         * IF
         * ELSE
         * WHILE
         * RETURN
         * STRUCT
         * SIZEOF
         * CONTINUE
         * BREAK
         * 
         * types:
         * INT
         * VOID
         * CHAR
         */
        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_') {
            StringBuilder sb = new StringBuilder();
            sb.append(c);
            c = scanner.peek();

            while ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_' || (c >= '0' && c <= '9')) {
                sb.append(c);
                scanner.next();
                c = scanner.peek();

            }

            if (sb.toString().equals("if")) {
                return new Token(Token.Category.IF, line, column);
            }
            if (sb.toString().equals("else")) {
                return new Token(Token.Category.ELSE, line, column);
            }
            if (sb.toString().equals("while")) {
                return new Token(Token.Category.WHILE, line, column);
            }
            if (sb.toString().equals("return")) {
                return new Token(Token.Category.RETURN, line, column);
            }
            if (sb.toString().equals("struct")) {
                return new Token(Token.Category.STRUCT, line, column);
            }
            if (sb.toString().equals("sizeof")) {
                return new Token(Token.Category.SIZEOF, line, column);
            }
            if (sb.toString().equals("continue")) {
                return new Token(Token.Category.CONTINUE, line, column);
            }
            if (sb.toString().equals("break")) {
                return new Token(Token.Category.BREAK, line, column);
            }
            if (sb.toString().equals("int")) {
                return new Token(Token.Category.INT, line, column);
            }
            if (sb.toString().equals("void")) {
                return new Token(Token.Category.VOID, line, column);
            }
            if (sb.toString().equals("char")) {
                return new Token(Token.Category.CHAR, line, column);
            }

            return new Token(Token.Category.IDENTIFIER, sb.toString(), line, column);
        }

        // recognising int literals
        if (c >= '0' && c <= '9') {
            StringBuilder sb = new StringBuilder();
            sb.append(c);
            c = scanner.peek();

            while (c >= '0' && c <= '9') {
                sb.append(c);
                scanner.next();
                c = scanner.peek();
            }

            return new Token(Token.Category.INT_LITERAL, sb.toString(), line, column);
        }

        // recognising string literals
        if (c == '"') {
            c = scanner.peek();
            StringBuilder sb = new StringBuilder();
            while (specialCharWithoutDoubleQuote.indexOf(c) > -1 || (c >= 'a' && c <= 'z')
                    || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == ' ' || c == '\\') {
                sb.append(c);
                scanner.next();

                if (c == '\\') {
                    c = scanner.peek();
                    if (escapedChar.indexOf(c) > -1) {
                        sb.append(c);
                        scanner.next();
                    } else {
                        error(c, line, column);
                        return new Token(Token.Category.INVALID, line, column);
                    }
                }

                c = scanner.peek();

                if (c == '"') {
                    scanner.next();
                    return new Token(Token.Category.STRING_LITERAL, sb.toString(), line, column);
                }
            }

            error(c, line, column);
            return new Token(Token.Category.INVALID, line, column);
        }

        // recognising char literals
        if (c == '\'') {
            c = scanner.peek();
            StringBuilder sb = new StringBuilder();
            if (specialCharWithoutSingleQuote.indexOf(c) > -1 || (c >= 'a' && c <= 'z')
                    || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == ' ' || c == '\\') {
                sb.append(c);
                scanner.next();

                if (c == '\\') {
                    c = scanner.peek();
                    if (escapedChar.indexOf(c) > -1) {
                        sb.append(c);
                        scanner.next();
                    } else {
                        error(c, line, column);
                        return new Token(Token.Category.INVALID, line, column);
                    }
                }

                c = scanner.peek();
                if (c == '\'') {
                    scanner.next();
                    return new Token(Token.Category.CHAR_LITERAL, sb.toString(), line, column);
                }
            }

            error(c, line, column);
            return new Token(Token.Category.INVALID, line, column);
        }

        /*
         * recognising logical operators
         * AND &&
         * OR ||
         */
        if (c == '&')

        {
            c = scanner.peek();
            if (c == '&') {
                scanner.next();
                return new Token(Token.Category.LOGAND, line, column);
            } else {
                c = '&';
            }
        }

        if (c == '|') {
            c = scanner.peek();
            if (c == '|') {
                scanner.next();
                return new Token(Token.Category.LOGOR, line, column);
            } else {
                c = '|';
            }
        }

        /*
         * recognising comparisons
         * EQ '=='
         * NE '!='
         * LE '<='
         * GE '>='
         * LT '<'
         * GT '>'
         */

        if (c == '=') {
            c = scanner.peek();
            if (c == '=') {
                scanner.next();
                return new Token(Token.Category.EQ, line, column);
            } else {
                c = '=';
            }
        }

        if (c == '!') {
            c = scanner.peek();
            if (c == '=') {
                scanner.next();
                return new Token(Token.Category.NE, line, column);
            } else {
                c = '!';
            }
        }

        if (c == '<') {
            c = scanner.peek();
            if (c == '=') {
                scanner.next();
                return new Token(Token.Category.LE, line, column);
            } else {
                c = '<';
            }
        }

        if (c == '>') {
            c = scanner.peek();
            if (c == '=') {
                scanner.next();
                return new Token(Token.Category.GE, line, column);
            } else {
                c = '>';
            }
        }

        if (c == '<')
            return new Token(Token.Category.LT, line, column);

        if (c == '>')
            return new Token(Token.Category.GT, line, column);

        // recognising assign
        if (c == '=')
            return new Token(Token.Category.ASSIGN, line, column);

        /*
         * recognising delimeters
         * LBRA '{'
         * RBRA '}'
         * LPAR '('
         * RPAR ')'
         * LSBR '['
         * RSBR ']'
         * SC ';'
         * COMMA ','
         */

        if (c == '{')
            return new Token(Token.Category.LBRA, line, column);
        if (c == '}')
            return new Token(Token.Category.RBRA, line, column);
        if (c == '(')
            return new Token(Token.Category.LPAR, line, column);
        if (c == ')')
            return new Token(Token.Category.RPAR, line, column);
        if (c == '[')
            return new Token(Token.Category.LSBR, line, column);
        if (c == ']')
            return new Token(Token.Category.RSBR, line, column);
        if (c == ';')
            return new Token(Token.Category.SC, line, column);
        if (c == ',')
            return new Token(Token.Category.COMMA, line, column);

        /*
         * recognising operators
         * ADDITION '+'
         * SUBTRACTION '-'
         * ASTERISK '*' for multiplication and pointers
         * DIVISION '/'
         * REMAINDER '%'
         * AND '&'
         */

        if (c == '+')
            return new Token(Token.Category.PLUS, line, column);
        if (c == '-')
            return new Token(Token.Category.MINUS, line, column);
        if (c == '*')
            return new Token(Token.Category.ASTERISK, line, column);
        if (c == '/')
            return new Token(Token.Category.DIV, line, column);
        if (c == '%')
            return new Token(Token.Category.REM, line, column);
        if (c == '&')
            return new Token(Token.Category.AND, line, column);

        // recognising dot for struct member accesses
        if (c == '.')
            return new Token(Token.Category.DOT, line, column);

        // recognising include directive
        if (c == '#') {
            int state = 0;
            while (state != -1) {
                c = scanner.peek();
                switch (state) {
                    case 0:
                        if (c == 'i') {
                            scanner.next();
                            state++;
                        } else {
                            state = -1;
                        }
                        break;
                    case 1:
                        if (c == 'n') {
                            scanner.next();
                            state++;
                        } else {
                            state = -1;
                        }
                        break;
                    case 2:
                        if (c == 'c') {
                            scanner.next();
                            state++;
                        } else {
                            state = -1;
                        }
                        break;
                    case 3:
                        if (c == 'l') {
                            scanner.next();
                            state++;
                        } else {
                            state = -1;
                        }
                        break;
                    case 4:
                        if (c == 'u') {
                            scanner.next();
                            state++;
                        } else {
                            state = -1;
                        }
                        break;
                    case 5:
                        if (c == 'd') {
                            scanner.next();
                            state++;
                        } else {
                            state = -1;
                        }
                        break;
                    case 6:
                        if (c == 'e') {
                            scanner.next();
                            return new Token(Token.Category.INCLUDE, line, column);
                        } else {
                            state = -1;
                        }
                        break;
                }
            }

        }

        // if we reach this point, it means we did not recognise a valid token
        error(c, line, column);
        return new Token(Token.Category.INVALID, line, column);
    }

}
