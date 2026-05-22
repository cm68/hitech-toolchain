# P1 Output Format

P1 emits an intermediate representation (IR) using a bracketed S-expression format. This output is consumed by subsequent compiler passes (P2, P3, etc.) to generate Z80 assembly code.

## Output Destination

Output is written to:
- A specified output file (second positional argument)
- Standard output (stdout) if no file specified
- Intermediate results go to a temporary file (`p1.tmp`)

## Record Format

All records are enclosed in square brackets `[ ... ]` with space-separated fields. Records end with a space before the closing bracket.

## Record Types

### Source Line Information

```
"LINE_NUMBER [FILENAME]
```

Tracks source location for debugging and error messages.

**Examples:**
```
"1 example.c
"42
"100 include.h
```

### Variable Declaration `[v ...]`

```
[v _NAME `TYPE INIT STORAGE ]
```

| Field | Description |
|-------|-------------|
| `_NAME` | Symbol name (underscore prefix) |
| `` `TYPE`` | Type encoding (see Type System below) |
| `INIT` | Initialization flag (0=none, 1=initialized) |
| `STORAGE` | Storage class character |

**Storage Classes:**
| Code | Meaning |
|------|---------|
| `s` | Static |
| `e` | External |
| `r` | Register |
| `a` | Auto (local) |

**Examples:**
```
[v _counter `i 0 s ]
[v _buffer `*c 0 s ]
[v _x `i 1 a ]
```

### Function Declaration `[d ...]`

```
[d _NAME `TYPE ARGS... ]
```

| Field | Description |
|-------|-------------|
| `_NAME` | Function name |
| `` `TYPE`` | Return type |
| `ARGS` | Argument type encodings |

**Example:**
```
[d _add `si `i `i ]
```

### Expression Statement `[e ...]`

```
[e EXPRESSION ]
```

Expressions use prefix notation with operators and operands.

**Example:**
```
[e :U 1 ]
[e = _x + _a _b ]
```

### Initialization Block `[i ...]`

```
[i _NAME
:U ..
-> VALUE `TYPE
-> VALUE `TYPE
..
]
```

Used for array and structure initialization.

**Example:**
```
[i _arr
:U ..
-> 10 `c
-> 20 `c
-> 30 `c
..
]
```

### Switch Statement `[\ ...]`

```
[\ EXPR CASE1 LABEL1 CASE2 LABEL2 ... .. DEFAULT_LABEL ]
```

| Field | Description |
|-------|-------------|
| `EXPR` | Switch expression |
| `CASEn` | Case value |
| `LABELn` | Jump label for case |
| `..` | Separator before default |
| `DEFAULT_LABEL` | Default case label |

**Example:**
```
[\ _val 1 100 2 200 3 300 .. 400 ]
```

### Structure Definition `[s ...]`

```
[s S# MEMBER_TYPE MEMBER_NAME ... ]
```

| Field | Description |
|-------|-------------|
| `S#` | Structure ID number |
| `MEMBER_TYPE` | Type of each member |
| `MEMBER_NAME` | Name of each member |

**Example:**
```
[s S1 `i _x `i _y ]
```

### Union Definition `[u ...]`

```
[u S# MEMBER_TYPE MEMBER_NAME ... ]
```

Same format as structures but uses `[u` prefix.

### Enum Constant `[c ...]`

```
[c _NAME ]
```

Declares an enumeration constant.

## Type System

Types are encoded as a string starting with a backtick (`` ` ``).

### Base Types

| Code | Type | Size |
|------|------|------|
| `b` | char | 1 byte |
| `c` | signed char | 1 byte |
| `s` | short | 2 bytes |
| `i` | int | 2 bytes |
| `l` | long | 4 bytes |
| `x` | float | 4 bytes |
| `f` | double | 8 bytes |
| `v` | void | 0 bytes |

### Type Modifiers

| Modifier | Position | Meaning |
|----------|----------|---------|
| `u` | Prefix | Unsigned |
| `*` | After base | Pointer (each `*` adds indirection) |
| `(` | After base | Function or array |
| `S#` | Replaces base | Struct/union reference |

### Type Examples

| Encoding | C Type |
|----------|--------|
| `` `i`` | `int` |
| `` `ui`` | `unsigned int` |
| `` `l`` | `long` |
| `` `ul`` | `unsigned long` |
| `` `c`` | `signed char` |
| `` `uc`` | `unsigned char` |
| `` `*i`` | `int *` |
| `` `**c`` | `char **` |
| `` `*S1`` | `struct S1 *` |
| `` `(i`` | `int[]` or `int()` |
| `` `*v`` | `void *` |

### Data Type Constants

Internal type codes used in the compiler:

| Constant | Value | Type |
|----------|-------|------|
| `DT_CHAR` | 4 | char |
| `DT_UCHAR` | 5 | unsigned char |
| `DT_SHORT` | 6 | short |
| `DT_USHORT` | 7 | unsigned short |
| `DT_INT` | 8 | int |
| `DT_UINT` | 9 | unsigned int |
| `DT_LONG` | 10 | long |
| `DT_ULONG` | 11 | unsigned long |
| `DT_FLOAT` | 14 | float |
| `DT_DOUBLE` | 16 | double |
| `DT_ENUM` | 18 | enum |
| `DT_VOID` | 20 | void |
| `DT_POINTER` | 22 | pointer |
| `DT_VARGS` | 24 | varargs |
| `DT_STRUCT` | 26 | struct |
| `DT_UNION` | 28 | union |

## Symbol Naming

| Prefix | Meaning |
|--------|---------|
| `_` | User-defined symbol (variables, functions) |
| `F` | Compiler-generated label (e.g., `F1`, `F2`) |
| `S` | Structure/union ID (e.g., `S1`, `S2`) |

## Expression Operators

Expressions use prefix notation. Common operators:

| Symbol | Operation |
|--------|-----------|
| `+` | Addition |
| `-` | Subtraction |
| `*` | Multiplication |
| `/` | Division |
| `%` | Modulo |
| `&` | Bitwise AND |
| `|` | Bitwise OR |
| `^` | Bitwise XOR |
| `<<` | Left shift |
| `>>` | Right shift |
| `=` | Assignment |
| `==` | Equality |
| `!=` | Not equal |
| `<` | Less than |
| `>` | Greater than |
| `<=` | Less or equal |
| `>=` | Greater or equal |
| `&&` | Logical AND |
| `||` | Logical OR |
| `!` | Logical NOT |
| `~` | Bitwise NOT |
| `++` | Increment |
| `--` | Decrement |
| `->` | Member access |
| `.` | Direct member |
| `:U` | Label/jump target |

## Complete Example

**Input C code:**
```c
int counter;
static char buffer[10];

struct point {
    int x;
    int y;
};

int add(int a, int b) {
    return a + b;
}
```

**Output IR:**
```
"1 example.c
[v _counter `i 0 e ]
[v _buffer `(c 0 s ]
[s S1 `i _x `i _y ]
"8 example.c
[d _add `si `i `i ]
[v _a `i 0 a ]
[v _b `i 0 a ]
[e :U F1 ]
[e = F2 + _a _b ]
[e :U F1 ]
```

## Cross-Reference Output

When `-C` flag is used, P1 also generates a `.crf` cross-reference file containing symbol references with line numbers for use by documentation tools.
