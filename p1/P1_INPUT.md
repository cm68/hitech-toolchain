# P1 Input Token Stream

P1 is the first pass of the HI-TECH Z80 C Compiler v3.09. It performs lexical analysis, parsing, and semantic analysis of C source code.

## Input Source

P1 reads standard C source code from:
- A specified input file (first positional argument)
- Standard input (stdin) if no file specified

## Lexical Analysis

The lexer (`lex.c`) tokenizes input via the `yylex()` function, returning token IDs defined in `tok.h`.

### Token Categories

#### Structural Tokens

| Token | ID | Description |
|-------|-----|-------------|
| `T_EOF` | 1 | End of file |
| `T_SEMI` | 2 | Semicolon `;` |
| `T_RBRACE` | 3 | Right brace `}` |
| `T_LBRACE` | 4 | Left brace `{` |
| `T_RPAREN` | 7 | Right parenthesis `)` |
| `T_LPAREN` | 8 | Left parenthesis `(` |
| `T_RBRACK` | 9 | Right bracket `]` |
| `T_LBRACK` | 10 | Left bracket `[` |
| `T_COLON` | 11 | Colon `:` |
| `T_QMARK` | 12 | Question mark `?` |

#### Keywords (T_AUTO=20 through T_WHILE=49)

| Token | ID | Keyword |
|-------|-----|---------|
| `T_AUTO` | 20 | `auto` |
| `T_BREAK` | 21 | `break` |
| `T_CASE` | 22 | `case` |
| `T_CHAR` | 23 | `char` |
| `T_CONTINUE` | 24 | `continue` |
| `T_DEFAULT` | 25 | `default` |
| `T_DO` | 26 | `do` |
| `T_DOUBLE` | 27 | `double` |
| `T_ELSE` | 28 | `else` |
| `T_ENUM` | 29 | `enum` |
| `T_EXTERN` | 30 | `extern` |
| `T_FLOAT` | 31 | `float` |
| `T_FOR` | 32 | `for` |
| `T_GOTO` | 33 | `goto` |
| `T_IF` | 34 | `if` |
| `T_INT` | 35 | `int` |
| `T_LONG` | 36 | `long` |
| `T_REGISTER` | 37 | `register` |
| `T_RETURN` | 38 | `return` |
| `T_SHORT` | 39 | `short` |
| `T_SIZEOF` | 40 | `sizeof` |
| `T_STATIC` | 41 | `static` |
| `T_STRUCT` | 42 | `struct` |
| `T_SWITCH` | 43 | `switch` |
| `T_TYPEDEF` | 44 | `typedef` |
| `T_UNION` | 45 | `union` |
| `T_UNSIGNED` | 46 | `unsigned` |
| `T_VOID` | 47 | `void` |
| `T_WHILE` | 49 | `while` |

#### Operators

| Token | ID | Operator |
|-------|-----|----------|
| `T_STAR` | 80 | `*` (multiply/dereference) |
| `T_DIV` | 81 | `/` |
| `T_MOD` | 82 | `%` |
| `T_PLUS` | 83 | `+` |
| `T_MINUS` | 84 | `-` |
| `T_LSHIFT` | 85 | `<<` |
| `T_RSHIFT` | 86 | `>>` |
| `T_LT` | 87 | `<` |
| `T_LE` | 88 | `<=` |
| `T_GT` | 89 | `>` |
| `T_GE` | 90 | `>=` |
| `T_EQ` | 91 | `==` |
| `T_NE` | 92 | `!=` |
| `T_BAND` | 93 | `&` (bitwise AND) |
| `T_BXOR` | 94 | `^` (bitwise XOR) |
| `T_BOR` | 95 | `|` (bitwise OR) |
| `T_LAND` | 96 | `&&` (logical AND) |
| `T_LOR` | 97 | `||` (logical OR) |
| `T_ASSIGN` | 98 | `=` |
| `T_MULASS` | 99 | `*=` |
| `T_DIVASS` | 100 | `/=` |
| `T_MODASS` | 101 | `%=` |
| `T_ADDASS` | 102 | `+=` |
| `T_SUBASS` | 103 | `-=` |
| `T_LSASS` | 104 | `<<=` |
| `T_RSASS` | 105 | `>>=` |
| `T_ANDASS` | 106 | `&=` |
| `T_XORASS` | 107 | `^=` |
| `T_ORASS` | 108 | `|=` |
| `T_INCR` | 109 | `++` |
| `T_DECR` | 110 | `--` |
| `T_NOT` | 111 | `!` (logical NOT) |
| `T_BNOT` | 112 | `~` (bitwise NOT) |
| `T_COMMA` | 113 | `,` |
| `T_DOT` | 114 | `.` |
| `T_POINTER` | 60 | `->` (member access) |

#### Literals and Identifiers

| Token | ID | Description |
|-------|-----|-------------|
| `T_ID` | 115 | Identifier |
| `T_ICONST` | 116 | Integer constant |
| `T_LCONST` | 117 | Long constant |
| `T_SCONST` | 118 | String constant |
| `T_FCONST` | 127 | Float/double constant |

#### Semantic Tokens

| Token | ID | Description |
|-------|-----|-------------|
| `S_CLASS` | 5 | Storage class specifier |
| `S_TYPE` | 119 | Type specifier |
| `S_MEMBER` | 6 | Structure/union member |

## Number Formats

The lexer recognizes these numeric formats:

### Integer Constants
- **Decimal:** `123`, `456`
- **Octal:** `0777`, `0123` (leading zero)
- **Hexadecimal:** `0xFF`, `0x1A2B` (0x or 0X prefix)

### Long Constants
- Suffix `L` or `l`: `123L`, `0x100L`

### Floating Point Constants
- Basic: `3.14`, `.5`, `2.`
- Exponential: `1.23e10`, `1E-5`, `3.14e+2`

## Character Constants

Single-quoted characters with escape sequence support:

| Escape | Value | Description |
|--------|-------|-------------|
| `\n` | 0x0A | Newline |
| `\r` | 0x0D | Carriage return |
| `\t` | 0x09 | Tab |
| `\b` | 0x08 | Backspace |
| `\f` | 0x0C | Form feed |
| `\\` | 0x5C | Backslash |
| `\'` | 0x27 | Single quote |
| `\0` | 0x00 | Null |
| `\nnn` | octal | Octal value (1-3 digits) |

## String Constants

Double-quoted strings with the same escape sequences as character constants. Strings are null-terminated.

## Preprocessor Directives

P1 handles these directives:

| Directive | Description |
|-----------|-------------|
| `#line N` | Set current line number to N |
| `#line N "file"` | Set line number and filename |
| `#asm` ... `#endasm` | Inline assembly block (passed through) |

## Comments

C-style comments are supported:
- Block comments: `/* ... */`
- Comments do not nest

## Input Buffer

- Input is buffered in a 512-byte buffer (`inBuf`)
- Lines are read via `getCh()` function
- Maximum identifier length: 40 characters
- Line numbers tracked for error reporting

## Example Input

```c
#line 1 "example.c"
int counter;
static char buffer[256];

struct point {
    int x;
    int y;
};

int add(int a, int b) {
    return a + b;
}

void main() {
    int i;
    for (i = 0; i < 10; i++) {
        counter += i;
    }
}
```
