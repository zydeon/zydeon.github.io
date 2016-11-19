---
layout: page
title: qccompiler
---

Design and implementation of a compiler from scratch, including:

1. Lexical analysis
2. Syntactic analysis
  1. Abstract syntax tree (AST) construction
3. Semantic analysis
4. Code generation

It's written in C and it compiles input files written in qC, a small subset of the language ANSI C (C89/C90). The generated code is in C, but very close to Assembly.

## Features of qC
* use variables and literals of types *character* and *integer* (both with signal)
* function declarations/calls, with recursion support
* pointers to variables and literals and to other pointers
* unidimensional arrays for integers, characters or pointers
* literals of type *string*
* arithmetic and logic expressions (check language grammar)
* simple relational operations
* pointer operations
* assign operations
* control operations (*if-else* and *while*)
* output operations (simplified version of *printf*)
* conversion between integers and strings - operations *itoa* and *atoi*
* comments of type /\* ... \*/

## Tokens

| Token | Meaning |
| ------:| --------|
|_ID_ | alphameric case sensitive sequences beginning with a letter where '_' is also allowed |
|_INTLIT_ | sequence of digits without unnecessary left pad zeros |
|_CHRLIT_ | single character (except newline or single quote) or *escape sequence* (\n, \t, \, \', \" and \0) between single quotes |
|_STRLIT_ | sequence of characters (except newline or single quote) and/or escape sequences between double quotes |
|_AMP_ | `&` |
|_AND_ | `&&` |
|_ASSIGN_ | `=` |
|_AST_ | `*` |
|_ATOI_ | `atoi` |
|_CHAR_ | `char` |
|_COMMA_ | `,` |
|_DIV_ | `/` |
|_ELSE_ | `else` |
|_EQ_ | `==` |
|_GE_ | `>=` |
|_GT_ | `>` |
|_IF_ | `if` |
|_INT_ | `int` |
|_ITOA_ | `itoa` |
|_LBRACE_ | `{` |
|_LE_ | `<=` |
|_LPAR_ | `(` |
|_LSQ_ | `[` |
|_LT_ | `<` |
|_MINUS_ | `-` |
|_MOD_ | `%` |
|_NE_ | `!=` |
|_NOT_ | `!` |
|_OR_ | `||` |
|_PLUS_ | `+` |
|_PRINTF_ | `printf` |
|_RBRACE_ | `}` |
|_RETURN_ | `return` |
|_RPAR_ | `)` |
|_RSQ_ | `]` |
|_SEMI_ | `;` |
|_WHILE_ | `while` |
|_RESERVED_ | C keywords not used in qC |

## Grammar (EBNF notation)

__Start__                → (FunctionDefinition | FunctionDeclaration | Declaration) {FunctionDefinition | FunctionDeclaration | Declaration}  
__FunctionDefinition__   → TypeSpecifier FunctionDeclarator LBRACE {Declaration} {Statement} RBRACE  
__FunctionDeclaration__  → TypeSpecifier FunctionDeclarator SEMI  
__FunctionDeclarator__   → {AST} ID LPAR [ParameterList] RPAR  
__ParameterList__        → ParameterDeclaration {COMMA ParameterDeclaration}  
__ParameterDeclaration__ → TypeSpecifier {AST} ID  
__Declaration__          → TypeSpecifier Declarator {COMMA Declarator} SEMI  
__TypeSpecifier__        → CHAR | INT  
__Declarator__           → {AST} ID [LSQ INTLIT RSQ]  
__Statement__            → [Expression] SEMI  
__Statement__            → LBRACE {Statement} RBRACE  
__Statement__            → IF LPAR Expression RPAR Statement [ELSE Statement]  
__Statement__            → WHILE LPAR Expression RPAR Statement  
__Statement__            → RETURN Expression SEMI  
__Expression__           → Expression ASSIGN Expression  
__Expression__           → Expression (AND | OR) Expression  
__Expression__           → Expression (EQ | NE | LT | GT | LE | GE) Expression  
__Expression__           → Expression (PLUS | MINUS | AST | DIV | MOD) Expression  
__Expression__           → (AMP | AST | PLUS | MINUS | NOT) Expression  
__Expression__           → Expression LSQ Expression RSQ  
__Expression__           → ID LPAR [Expression {COMMA Expression}] RPAR  
__Expression__           → (PRINTF | ATOI) LPAR Expression RPAR  
__Expression__           → ITOA LPAR Expression COMMA Expression RPAR  
__Expression__           → ID | INTLIT | CHRLIT | STRLIT | LPAR Expression RPAR  

## Usage

~~~~~~
$ make
$ ./qccompiler [OPTIONS] < input.qc
~~~~~~

### Options:
`-t` &nbsp; &nbsp;  print the abstract syntax tree and stop after syntatic analysis.  
`-s` &nbsp; &nbsp;  print the symbol table and stop after semantic analisys.  
`-c` &nbsp; &nbsp;  allways compile the program (unless errors occur).  
`-o` &nbsp; &nbsp;  allways compile the program (unless errors occur) and print compiled program to file.

If both flags `-s` and `-t` are set, the proccess stops after the semantic analysis.
The result of the compilation is written to the file `result.c

## Dependencies
* flex
* yacc
* gcc