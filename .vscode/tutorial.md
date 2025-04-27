Converted content:
Curry

A Tutorial Introduction

Draft of April 17, 2025

Sergio Antoy

Portland State University, U.S.A.
Web: <https://www.cs.pdx.edu/~antoy/>

Michael Hanus

Christian-Albrechts-Universit¨at Kiel, Germany
Web: <https://www.michaelhanus.de/>

Contents

Preface

I Language Features

1 Introduction

2 Getting Started with Curry

3 Main Features of Curry

3.1 Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.2 Expressions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.3 Predefined Types . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.4 Predefined Operations . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.5 Functions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.5.1 Basic Concepts . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.5.2 Pattern Matching . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.5.3 Conditions
3.5.4 Non-determinism . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.5.5 Functional Patterns
. . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.5.6 Default Rule . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.6 User-defined Types . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.7 Lists . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.8 Strings . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.9 Tuple
3.10 Type classes . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.11 Higher-Order Computations . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.12 Lazy Evaluation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.13 Local Definitions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.13.1 Where Clauses . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.13.2 Let Clauses . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.13.3 Layout . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.14.1 Logic Variables . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.14.2 Evaluation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

3.14 Variables

i

1

2

3

4

11
11
11
13
14
15
15
16
16
16
17
18
19
21
21
22
23
23
25
27
27
29
29
30
30
31

3.14.3 Flexible vs. Rigid Operations . . . . . . . . . . . . . . . . . . . . . . .
3.14.4 Programming . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
3.15 Input/Output . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

II Programming with Curry

4 Programming in Curry

4.1 Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.2 Lists . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.2.1 Notation . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
Inductive Definitions . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.2.2
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.2.3 Ranges
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.2.4 Comprehensions
4.2.5 Basic Functions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.2.6 Higher-order Functions
. . . . . . . . . . . . . . . . . . . . . . . . . .
4.2.7
Set Functions . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.2.8 Narrowing . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.3 Trees . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.3.1 Binary Search Trees . . . . . . . . . . . . . . . . . . . . . . . . . . . .
4.3.2 Trie Trees . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .

5 Managing Curry Packages

5.1
Importing Existing Packages
. . . . . . . . . . . . . . . . . . . . . . . . . . .
Installing Tools . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
5.2
5.3 Developing Applications and Packages . . . . . . . . . . . . . . . . . . . . . .

III Design Patterns

6 Design Patterns

6.1 Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
6.1.1 Deep selection . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
6.1.2 Constrained Constructor . . . . . . . . . . . . . . . . . . . . . . . . . .
6.1.3 Non-determinism introduction and elimination . . . . . . . . . . . . .

IV Applications & Libraries

7 Web Programming

7.1 Overview . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
7.2 Representing HTML Documents in Curry . . . . . . . . . . . . . . . . . . . .
7.3 Server-Side Web Scripts . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
7.4
Installing Web Programs . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
7.5 Forms with User Input . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
7.6 Stateful Forms

31
32
33

37

38
38
38
38
39
41
41
42
43
44
45
46
46
47

49
49
50
51

53

54
54
54
55
56

60

61
61
61
66
67
68
71

ii

7.7 Example: A Web Questionnaire . . . . . . . . . . . . . . . . . . . . . . . . . .
7.8 Finding Bugs . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
7.9 Advanced Web Programming . . . . . . . . . . . . . . . . . . . . . . . . . . .
7.9.1 URL Parameters . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
7.9.2 Cookies . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
Style Sheets . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
7.9.3

8 Further Libraries for Application Programming

Bibliography

Index

73
76
77
77
78
80

81

83

85

iii

Preface

This book is about programming in Curry, a general-purpose declarative programming lan-
guage that integrates functional with logic programming. Curry seamlessly combines the
key features of functional programming (nested expressions, lazy evaluation, higher-order
functions), logic programming (logical variables, partial data structures, built-in search), and
concurrent programming (concurrent evaluation of constraints with synchronization on logical
variables).

This book is best used as an introduction to Curry. Curry is a rigorously defined program-
ming language. The “Report” is a still evolving, but fairly stable, document that precisely
defines the language, in particular both its syntax and operational semantics. However, the
report is not best suited to the beginner, rather it may be consulted in conjunction with this
tutorial for the sake of a completeness that is not sought here.

There are several implementations of Curry. The examples and exercises in this book
have been developed and executed using PAKCS. PAKCS is also accessible (in a restricted
form) on-line via a web-based system.
In this document, you find for many programs a
“Browse” link which directly loads the program into this web-based system so that you can
run or modify it. Alternatively, you can download the example programs and execute them
on your locally installed Curry system.

1

Part I

Language Features

2

Chapter 1

Introduction

Curry is a universal programming language aiming at the amalgamation of the most im-
portant declarative programming paradigms, namely functional programming and logic pro-
gramming. Curry combines in a seamless way features from functional programming (nested
expressions, lazy evaluation, higher-order functions), logic programming (logical variables,
partial data structures, built-in search), and concurrent programming (concurrent evaluation
of constraints with synchronization on logical variables). Moreover, Curry provides addi-
tional features in comparison to the pure languages (compared to functional programming:
search, computing with partial information; compared to logic programming: more efficient
evaluation due to the deterministic evaluation of functions). Moreover, it also amalgamates
the most important operational principles developed in the area of integrated functional
logic languages: “residuation” and “narrowing” (see [12, 18] for surveys on functional logic
programming).

The development of Curry is an international initiative intended to provide a common
platform for the research, teaching1 and application of integrated functional logic languages.
This document is intended to provide a tutorial introduction into the features of Curry
and their use in application programming. It is not a formal definition of Curry which can
be found in [21].

1Actually, Curry has been successfully applied to teach functional and logic programming techniques in a
single course without switching between different programming languages. More details about this aspect can
be found in [13].

3

Chapter 2

Getting Started with Curry

There are different implementations of Curry available1. As such we can not describe the use
of a Curry system in general. Some implementations are batch-oriented. In this case a Curry
program is compiled into machine code and then executed. In this introduction we prefer
an implementation that supports an interactive environment which provides faster program
development by loading and testing programs within the integrated environment.

PAKCS (Portland Aachen Kiel Curry System) [4, 20]2 contains such an interactive en-
vironment so that we show the use of this system here in order to get started with Curry.
When you start the interactive environment of PAKCS (e.g., by typing “pakcs” as a shell
command), you see something like the following output after the system’s initialization:

__
|_ \

_
| |
\ \ | |____
/

\|

____|

/ /\ \ |
\_\|

/_/

PAKCS - the Portland Aachen Kiel Curry System

Version 3.8.0 of 2025-04-07 (swi 9.0)

(using Curry Package Manager , version 3.3.0)

Type ":h" for help (contact: pakcs@curry -lang.org)
Prelude >

Now the system is ready and waits for some input. By typing “:q” (quit) you can always leave
the system, but this is not what we intend to do now. The prefix of the current input line
always shows the currently loaded module or program. In this case the module Prelude is
loaded during system startup. The standard system module Prelude contains the definition
of several predefined functions and data structures which are available in all Curry programs.
For instance, the standard arithmetic functions like +, * etc are predefined so that we can
use the system as a simple calculator (the input typed by the user is underlined):

Prelude> 3+5*4
23

In this simple example you can already see the basic functionality of the environment:

if

1Check the web page <https://www.curry-lang.org> for details.
2<https://www.curry-lang.org/pakcs>

4

you type an expression, the system evaluates this expression to a value (i.e., an expression
without evaluable functions) and prints this value as the result. Now you can type additional
expressions to be evaluated. For instance, you can compare the values of two expressions
with the usual comparison operators >, <, <=, >=:

Prelude> 3+5*4 >= 3*(4+2)
True

== and /= are the operators for equality and disequality and can be used on numbers as well
as on other datatypes:

Prelude> 4+3 == 8
False

One may want to use Curry as more than a mere desk calculator. Therefore, we will discuss
how to write programs in Curry. In general, a Curry program is a set of function definitions.
The simplest sort of functions are those that do not depend on any input value, i.e., constant
functions. For instance, a definition like

nine = 3*3

(such definitions are also called rules or defining equations) defines the name nine as equal to
the value of 3*3, i.e., 9. This means that each occurrence of the name nine in an expression
is replaced by the value 9, i.e., the value of the expression “4*nine” is 36.

Of course, it is more interesting to define functions depending on some input arguments.

For instance, a function to compute the square value of a given number can be defined by

square x = x*x

Now it is time to make some remarks about the syntax of Curry (which is actually very similar
to Haskell [22]). The names of functions and parameters usually start with a lowercase letter
followed by letters, digits and underscores. The application of a function f to an expression e
is denoted by juxtaposition, i.e., by “f e”. An exception are the infix operators like + or * that
can be written between their arguments to enable the standard mathematical notation for
arithmetic expressions. Furthermore, these operators are defined with the usual associativity
and precedence rules so that an expression like “2+3+4*5” is interpreted as ((2+3)+(4*5)).
However, one can also enclose expressions in parenthesis to enforce the intended grouping.

If we write the definitions of nine and square with a standard text editor into a file (note
that each definition must be written on a separate line starting in the first column) named
“firstprog.curry” ([Browse Program][Download Program]), we can load (and compile) the
program into our environment by the command

Prelude> :l firstprog

which reads and compiles the file “firstprog.curry” and makes all definitions in this pro-
gram visible in the environment. After the successful processing of this program, the envi-
ronment shows the prefix to the input line as

firstprog>

5

indicating that the program “firstprog” is currently loaded. Now we can use the definitions
in this program in the expressions to be evaluated:

firstprog> square nine
81

If we change our currently loaded program, we can easily reload the new version by typing
“:r”. For instance, if we add the definition “two = 2” to our file “firstprog.curry”, we
can reload the program as follows:

firstprog> :r
...
firstprog> square (square two)
16

Functions containing only a single arithmetic expression in the right-hand side of their defining
equations might be useful abstractions of complex expressions but are generally only of limited
use. More interesting functions can be written using conditional expressions. A conditional
expression has the general form “if c then e1 else e2” where c is a Boolean expression
(yielding the value True or False). A conditional expression is evaluated by evaluating the
condition c first. If its value is True, the value of the conditional is the value of e1, otherwise it
is the value of e2. For instance, the following rule defines a function to compute the absolute
value of a number:

absolute x = if x>=0 then x else -x

Using recursive definitions, i.e., rules where the defined function occurs in a recursive call in
the right-hand side, we can define functions whose evaluation requires a non-constant number
of evaluation steps. For instance, the following rule defines the factorial of a natural number
[Browse Program][Download Program]:

fac n = if n==0 then 1

else n * fac(n-1)

Note that function definitions can be put in several lines provided that the subsequent lines
start in a column greater than the column where the left-hand side starts (this is also called
the layout or off-side rule for separating definitions).

You might have noticed that functions are defined by rules like in mathematics without
providing any type declarations. This does not mean that Curry is an untyped language. On
the contrary, Curry is a strongly typed language which means that each entity in a program
(e.g., functions, parameters) has a type and ill-typed combinations are detected by the com-
piler. For instance, expressions like “3*True” or “fac False” are rejected by the compiler.
Although type annotations need not be written by the programmer, they are automatically
inferred by the compiler using a type inference algorithm. Nevertheless, it is a good idea to
write down the types of functions in order to provide at least a minimal documentation of
the intended use of functions. For instance, the function fac maps integers into integers and
so its type can be specified by

6

fac :: Int -> Int

(Int denotes the predefined type of integers; similarly Bool denotes the type of Boolean
If one is interested in the type of a function or expression inferred by the type
values).
inference algorithm, one can show it using the command “:t” in PAKCS:

absfac> :t fac
fac :: Int -> Int
absfac> :t fac 3
fac 3 :: Int

A useful feature of Curry (as well as most functional and logic programming languages) is
the ability to define functions in a pattern-oriented style. This means that we can put values
like True or False in arguments of the left-hand side of a rule and define a function by using
several rules. The rule that matches the pattern of left-hand side will be called. For instance,
instead of defining the negation on Boolean values by the single rule

not x = if x==True then False

else True

we can define it by using two rules, each with a different pattern (here we also add the type
declaration):

not :: Bool -> Bool
not False = True
not True

= False

The pattern-oriented notation becomes very useful in combination with more complex data
structures, as we will see later.

One of the distinguishing features of Curry in comparison to functional languages is its
ability to search for solutions, i.e., to compute values for the arguments of functions so that the
functions can be evaluated. For instance, consider the following definitions of some functions
on Boolean values contained in the prelude (note that Curry also allows functions defined as
infix operators, i.e., “x && y” denotes the application of function && to the arguments x and
y):

False && _
&& x
True

False || x
|| _
True

not False
not True

=
=

=
=

=
=

False
x

x
True

True
False

The underscore “_” occurring in the rules for && and || denotes an arbitrary value, i.e., such
an anonymous variable is used for argument variables that occur only once in a rule.

We can use these definitions to compute the value of a Boolean expression:

Prelude> True && (True || (not True))

7

True

However, we can do more and use the same functions to compute Boolean values for some
(initially unknown) arguments:

Prelude> x && (y || (not x))
{x=True, y=True} True
{x=True, y=False} False
{x=False, y=y} False

where x,y free

Note that the initial expression contains the free variables x and y as arguments. To support
the detection of typos, free variables in initial expressions must be explicitly declared by
a “where...free” clause at the end of the expression. Free variables denote “unknown”
values. They are instantiated (i.e., replaced by some concrete values) so that the instantiated
expression is evaluable. As we have seen above, replacing both x and y by True makes the
expression reducible to True. Therefore, the Curry system shows in the first result line True
together with the bindings (i.e., instantiations) of the free variables it has done to compute
this value.

In general, there is more than one possibility to instantiate the arguments, e.g., the
Boolean variables x and y can be instantiated to True or False. This leads to different
solutions which are printed one after the other as shown above: there is one instantiation for
x and y so that the instantiated expression evaluates to True, and there are two instantiations
so that the instantiated expression evaluates to False. The last result line shows that the
initial expression has the value False provided that x is instantiated to False but y can be
arbitrary (i.e., y is not instantiated).

As we have seen, PAKCS evaluates and shows all the values (also called solutions if
variables are instantiated) of an initial expression. This default mode can be changed by the
command “:set +interactive”. In the interactive mode, we are asked after each computed
value how to proceed: whether we want to see the next value (“yes”), no more values (“no”),
or all values without any further interaction (“all”). Thus, we can show the values of the
initial expression step-by-step as follows (note that it is sufficient to type the first letter of
the answer followed by the “enter” key):

where x,y free

Prelude> :set +interactive
Prelude> x && (y || (not x))
{x=True, y=True} True
More values? [Y(es)/n(o)/a(ll)] y
{x=True, y=False} False
More values? [Y(es)/n(o)/a(ll)] y
{x=False, y=y} False
More values? [Y(es)/n(o)/a(ll)] y
No more values.

The final line indicates that there are no more values to the initial expression. This situation
can also occur if functions are partially defined, i.e., there is a call to which no rule is
applicable. For instance, assume that we define the function pneg by the single rule [Browse
Program][Download Program]

8

pneg True = False

then there is no rule to evaluate the call “pneg False”:

bool> pneg False
*** No value found!

As we have seen in the Boolean example above, Curry can evaluate expressions containing free
variables by guessing values for the free variables so that the expression becomes evaluable
(the concrete strategy used by Curry will be explained later, but don’t worry: Curry is
based on an optimal evaluation strategy [3] that performs these instantiations in a goal-
oriented manner). However, we might not be interested to see all possible evaluations but
only those that lead to a required result. For instance, we might be only interested to compute
instantiations in a Boolean formula so that the formula becomes true, e.g., as in solving an
equation.

For this purpose, Curry offers constraints, i.e., formulas that are intended to be solved
(instead of computing an overall value). One of the basic constraints supported by Curry is
equality, i.e., “e1 =:= e2” denotes an equational constraint which is solvable whenever the
expressions e1 and e2 (which must be of the same type) can be instantiated so that they
are evaluable to the same value. For instance, the constraint “1+4=:=5” is solvable, and the
constraint “2+3=:=x” is solvable if the variable x is instantiated to 5. Now we can compute
positive solutions to a Boolean expression by solving a constraint containing True on one
side:

Prelude> (x && (y || (not x))) =:= True
{x=True, y=True} True

where x,y free

Curry allows the definition of functions by several rules and is able to search for several
solutions. We can combine both features to define operations that yield more than one
result for a given input. Such operations are called non-deterministic operations. A simple
example for a non-deterministic operation is the following function choose which yields non-
deterministically one of its arguments as a result [Browse Program][Download Program]:

choose x y = x
choose x y = y

With this function we could have several results for a particular call:

choose> choose 1 3
1
3

We can use choose to define other non-deterministic operations:

one23 = choose 1 (choose 2 3)

Thus, a call to one23 delivers one of the results 1, 2, or 3. Such a function might be useful to
specify the domain of values for which we want to solve a constraint. For instance, to search
for values x ∈ {1, 2, 3} satisfying the equation x + x = x ∗ x, we can solve this constraint

9

(c1 & c2 denotes the conjunction of the two constraints c1 and c2):

choose> x=:=one23 & x+x=:=x*x where x free
{x=2} True

The advantages of non-deterministic operations will become clear when we have discussed
the (demand-driven) evaluation strategy in more detail.

This chapter is intended to provide a broad overview of the main features of Curry and
the use of an interactive programming environment so that one can easily try the subsequent
examples. In the next chapter, we will discuss the features of Curry in more detail.

10

Chapter 3

Main Features of Curry

3.1 Overview

The major elements declared in program are functions and data structures.

• A function or operation defines a computation similar to an expression. However, the
expression computed by a function has a name and is often parameterized. These
characteristics enable you to execute the same computation, possibly with different
parameters, over and over in the same program by simply invoking the computation’s
name and setting the values of its parameters. A function also provides a procedural
abstraction. Rather than coding a computation by means of a possibly complicated
expression, you can factor out portions of this computation and abstract them by their
names.

• A data structure is a way to organize data. For example, you can record the movements
of your bank account in a column in which deposits are positive numbers and with-
drawals are negative numbers. Or you can record the same movements in two columns,
one for deposits and another for withdrawals, in which all numbers are positive. With
the second option, the columns rather than the signs specialize the meaning of the
numbers. The way in which information is organized may ease some computations,
such as retrieving portions of information, and is intimately related, through pattern
matching, to the way in which functions are coded.

This section describes in some detail both of these features and a number of related concepts.
Curry has some additional features not described in this section. Since they are useful
to support particular programming tasks, we introduce them later when we discuss such
programming techniques.

3.2 Expressions

A function can be regarded as a parameterized expression with a name. Thus, we begin by
explaining what an expression is and how it is used. Most expressions are built from simpler
subexpressions, a situation that calls for a recursive, or inductive, definition.

11

An expression is either a symbol or literal value or is the application of an ex-
pression to another expression.

A symbol or literal value is referred to as an atom. For example, numbers and the Boolean
symbols “True” and “False” are examples of atoms. Atoms constitute the most elementary
expressions. These elementary expressions can be combined to create more complex expres-
sions, e.g., “2 + 3” or “not True”. The combination is referred to as a function application.
Since a function application is a very common activity, it is convenient to denote it as simply
as possible. This convenience is obtained to the extreme by writing the two expressions one
near the other as in “not True”. This notation is referred to as juxtaposition.

In the above expressions, the symbols “+” and “not” are operations. Both are prede-
fined in the standard library Prelude. Although conceptually the symbols “+” and “not”
are alike, syntactically they differ. The symbol “+” is a infix operator as in the ordinary
mathematical notation. Infix operators have a precedence and an associativity so that the ex-
pression “2 + 3 *4” is understood as “2 + (3* 4)” and the expression “4 - 3 - 2” is understood
as “(4 - 3) - 2”. The precedence and associativity of an infix symbol are defined in a program
by a declaration. The following declarations, from the prelude, define these parameters for
some ordinary arithmetic operations:

infixl 7 *, ‘div‘, ‘mod‘
infixl 6 +, -
infix

<, >, <=, >=

4

For example, the precedence of the addition and subtraction operators is 6 and their asso-
ciativity is left. The relational operators have precedence 4 and are not associative. Opera-
tors with a higher precedence bind stronger, i.e., the expression “4 < 2 + 3” is interpreted as
“4 < (2 + 3)”.

Infix declarations must always occur at the beginning of a program. The prece-
dence of an operator is an integer between 0 and 9 inclusive. The associativity
of an operator is either left, denoted by the keyword “infixl” or right, denoted
by the keyword “infixr”. Non-associative infix operators are declared using the
keyword “infix”.

Most often, an infix operator is any user-defined sequence of characters taken from the set
“~!@#$%^&*+-=<>?./|\:”. Alphanumeric identifiers can be defined and used as infix opera-
tors if they are surrounded by backquotes, as “‘div‘” and “‘mod‘” in the previous declara-
tion. For example, for any integer value x, the following expression evaluates to x itself.

x ‘div‘ 2 * 2 + x ‘mod‘ 2

Non-infix symbols are prefix . They are applied by prefixing them to their arguments as in
“not True”.

Exercise 1 Define a predicate, read as “factors” and denoted by the infix operator “./.”,
that tells whether an integer is a factor of another integer. The predicate should work for every
input and 0 should not be a factor of any integer. The operator should be non-associative
and have precedence 7. [Browse Answer][Download Answer]

12

A symbol, whether infix or prefix, can only be applied to values of an appropriate type.
As one would expect, the Boolean negation operator can be applied only to a Boolean value.
For example, the expression “not 2” is an error. The compiler/interpreter would report that
the expression is incorrectly typed. We will discuss types in more detail after presenting data
declarations.

The application of an expression to another is a binary operation. The expression that
is being applied is referred to as the function of the application. The other expression is
referred to as the argument. Thus, in “not True”, “not” is the function and “True” is the
argument. The situation is slightly more complicated for infix operations. The reading of
“2 + 3” is that the function “+” is applied to the expression “2”. The result is a function
which is further applied to the expression “3”.

Expressions can also be conditional, i.e., depend on the value of a Boolean expression.
Such conditional expressions have the form “if b then e1 else e2”. The value of this
expression is the value of e1 if b evaluates to True, or the value of e2 if b evaluates to False.
Thus, the value of “if 3>4 then 2*2 else 3*4” is 12.

3.3 Predefined Types

A type is a set of values. Ubiquitous types, such as integers or characters, are predefined
by most programming languages. Curry makes no exception. These types are referred to
as builtin and are denoted with a familiar, somewhat special, syntax. Both the availability
of builtin types and their characteristics may depend on a specific implementation of Curry.
The following table summarizes some types available in PAKCS.

Type

Declaration Examples

Integer
Boolean
Character
String
List of τ
Unit

Int
Bool
Char
String
[τ ]
()

...,-2,-1,0,1,2,...
False, True
’a’,’b’,’c’,...,’\n’,...
"hello", "world"
[], [0,1,2], 0:1:2:[]
()

The details of these types are found in the PAKCS User Manual. Below, we only outline
a few crucial characteristics of the builtin types. The integers have arbitrary precision.
Some frequently used non-printable characters are denoted, as in other popular programming
languages, by escape sequences, e.g., newline is denoted by \n. The type List represents
sequences of values. This type is polymorphic, i.e., for any type τ , the type list of τ , denoted
by “[τ ]”, is a type whose instances are sequences of instances of τ . The last two examples
in the List row of the table denote a list of integers, their type denoted by “[Int]”. The
notation of lists will be further discussed later. The symbol “()” denotes the unit type as
well as the only element of this type. The unit type is useful in situations where the return
value of a function is not important. Another useful type available in PAKCS, the tuple,
will be described later.

13

3.4 Predefined Operations

Many frequently-used functions and infix operators, similar to frequently-used types, are
predefined in Curry. Some of these can be found in the “Prelude”, a Curry source program
automatically loaded when the compiler/interpreter starts. A few others are so fundamental
that they are built into the language. Some of these functions and operators are shown in
the following table.

Description

Ident. Fix. Prec. Type

Boolean equality
Constrained equality
Boolean conjunction
Boolean disjunction
Parallel conjunction
Constrained expression

==
=:=
&&
||
&
&>

R
R
R
R

4
4
3
2
0
0

a -> a -> Bool
a -> a -> Bool
Bool -> Bool -> Bool
Bool -> Bool -> Bool
Bool -> Bool -> Bool
Bool -> a -> a

Because of non-determinism and free variables, in the following discussion, different evalua-
tions of the same expression may produce different values.

The Boolean equality applied to expressions u and v, i.e., u == v, returns “True” when u and
v evaluate to the same value and “False” when they evaluate to different values—a more
precise definition will be given later. If the evaluation of u and/or v ends in an expression
that still contains functions, e.g., 1 ‘div‘ 0, the computation fails and no value is returned.

The constrained equality applied to expressions u and v, i.e., u =:= v returns “True” when
u and v evaluate to the same value—a precise definition will be given later. Otherwise, the
computation fails and no value is returned. A key difference between the Boolean and the
constrained equalities is how they evaluate expressions containing variables. This will be
discussed in some detail in Section 3.14.1.

The Boolean conjunction applied to expressions u and v, i.e., u && v, returns “True” when u
and v evaluate to “True”.

The Boolean disjunction applied to expressions u and v, i.e., u || v, returns “True” when u
or v evaluate to “True”.

The parallel conjunction applied to expressions u and v, i.e., u & v, evaluates u and v con-
currently. If both succeeds, the evaluation succeeds; otherwise it fails.

The constrained expression applied to a constraint c and an expression e, i.e., c &> e, evaluates
first c and, if c evaluates to “True”, then the result is the value of e, otherwise it fails.

Curry predefines many more functions and operations, e.g., the standard arithmetic and
relational operators on numbers. A complete list can be found both in the Report and the
“Prelude”.

14

3.5 Functions

3.5.1 Basic Concepts

A program function abstracts a function in the mathematical sense. A function is a device
that takes arguments and returns a result. The result is obtained by evaluating an expression
which generally involves the function’s arguments. The following function computes the
square of a number.

square x = x * x

The symbols “square” is the name or identifier of the function. The symbol “x” is the
function’s argument. The above declaration is referred to as a rewrite rule, or simply a rule,
defining a function. The portion of the declaration to the left of the symbol “=” is the rule’s
left-hand side. The expression “x * x” is the rule’s right-hand side.

When the “square” symbol is applied to an expression, e.g., “2 + 3”, this expression is
bound to the argument “x”. The result of the application is “(2 + 3) * (2 + 3)”, i.e., the body
in which the argument is replaced by its binding. Thus:

Prelude> square (2+3)
25

Functions can be anonymous, i.e., without a name. An anonymous function is useful when
a function is referenced only once. In this case, the reference to the function can be replaced
by the expression defining the function. In the following example:

result = (\x -> x * x) (2+3)

the value of result is 25.
It is obtained by applying the expression (\x -> x * x), an
anonymous function, to (2+3), its argument. An anonymous function definition has the
following structure:

\ <arguments > -> <right -hand side>

The arguments are listed as in any rewrite rule. The right-hand side is the expression to be
evaluated when the anonymous function is applied to actual arguments. A more motivating
example of anonymous function is presented in Section 3.11

The evaluation of any expression, in particular of a function application, is lazy. This
means that the computation of any expression, including the subexpressions of a larger ex-
pression, is delayed until the expression’s value is actually needed. The exact meaning of
“actually needed” is quite technical, but the intuitive meaning suffices for our purposes.
Many programming languages, such as C and Java, adopt this evaluation strategy, under the
name of short circuit, only for Boolean expressions.

We will discuss this issue in more detail later. Although the lazy evaluation strategy
is conceptually simpler than any other strategy, many traditional programming languages
evaluate the arguments of a function call eagerly, i.e., before applying a function to its
arguments. This fact is sometimes a source of confusion for the beginner.

15

3.5.2 Pattern Matching

The definition of a function can be broken into several rules. A single rule would suffice in
many cases. However, several rules allows a definition style, called pattern matching, which
is easier to code and understand. This feature allows a function to dispatch the expression
to be returned depending on the values of its arguments. The following example shows the
definition of the Boolean negation function “not”:

not True = False
not False = True

The above definition is equivalent to the following one which does not use pattern matching
but relies on a conditional expression:

not x = if x == True then False else True

Pattern matching is particularly convenient for functions that operate on algebraic datatypes.
We will further discuss this aspect after discussing data declarations.

3.5.3 Conditions

Each rule defining a function can include one or more conditions. For Boolean conditions, a
rule has the following general structure:

functId arg1 . . . argm | cond1 = expr1

|
. . . = . . .
| condn = exprn

A condition is tested after binding the arguments of a call to the corresponding arguments in
the left-hand side of the rule. The function is applied to the arguments only if the condition
holds. Each condition condi is an expression of type Bool. The conditions are tested in their
textual order. Thus, the first right-hand side with a condition evaluable to True is taken.
Furthermore, the last condition can be “otherwise” which is equivalent to True, i.e., it holds
regardless of any value of the arguments. The following example shows a plausible definition
of the maximum of two numbers:

max x y | x < y

= y
| otherwise = x

3.5.4 Non-determinism

Operations can be non-deterministic. Non-deterministic operations are not functions in the
mathematical sense because they can return different values for the same input. For example,
a hospital’s information system defines which days a doctor is on-call with a non-deterministic
function:

oncall Joan
oncall Joan
oncall Richard = Monday

= Monday
= Wednesday

16

oncall Luc
...

= Tuesday

The value of “oncall Joan” can be either “Monday” or “Wednesday”. The programmer
cannot select which of the two values will be computed. Non-deterministic operations support
a programming style similar to that of logic programs, while preserving some advantages of
functional programs such as expression nesting and lazy evaluation. In particular, some strong
properties concerning the evaluation of ordinary functions hold also for non-deterministic
operations [2]. For example, suppose that “today” holds which day of the week is today. A
predicate, “available”, telling whether its argument, a doctor, is available at the current
time is coded as:

available x | oncall x == today = True

| otherwise

= False

Without non-determinism, coding “oncall” would require some data structure, e.g., the
list of days in which each doctor is on-call, and defining “available” would become more
complicated.

Non-determinism is a powerful feature.

In programming, as in other aspects of life,
power must be exercised with some care. A non-deterministic program is appropriate only
if all its possible outputs are equally desirable.
If some outputs are more desirable than
others, the program should be (more) deterministic. In this case, non-determinism could be
conveniently used internally by the program to generate plausible results which can then be
selected according to desirability.

Exercise 2 In a manufacturing plant two specialized tasks, cut and polish, are executed
only by specialized workers, Alex, Bert and Chuck. Not every worker can execute every task.
Only Alex and Bert are able to Cut, whereas only Bert and Chuck are able to Polish. Code
a non-deterministic operation, assign, that assigns to a task a worker that can execute it.
[Browse Answer][Download Answer]

3.5.5 Functional Patterns

Pattern matching, see Sect. 3.5.2, is a feature that provides in a compact and readable
form both case distinction and (sub)argument selection. The arguments in a rule defined by
pattern matching are expressions consisting of variables and/or data constructor symbols.
Curry amplifies this feature with functional patterns. In a functional pattern some argument
in a rule defining a function is an expression containing a function symbol. For example, the
function computing the last element of a non-empty list can be defined as:

last (_++[e]) = e

where “++” is an infix operator that concatenates two lists, see function conc in Sect. 3.7.
The intuition is that if a list l can be seen as the concatenation of some uninteresting list and
a list containing the single element e, then e is the last element of l.

The meaning of the above rule is the same as the infinite set of rules:

17

last [e] = e
last [*,e] = e
last [*,_,e] = e
...

Code employing functional patterns should be preferred to similar code using conditions (see
below) because it is more readable and more efficient:

last xs | xs =:= _++[e] = e

where e free

Exercise 3 Define a function that takes a list a of integers and computes a sublist l of a
such that the last element of l is twice the first element. E.g., given the list [3, 6, 2, 1, 4, 5] the
sublists satisfying the required constraint are [3, 6] and [2, 1, 4]. [Browse Answer][Download
Answer]

3.5.6 Default Rule

The Curry language specifies that the textual order of the rules defining a function is irrelevant
in the sense that every rule that is applicable to an expression should be applied. In practice,
the situation is more delicate. For example, in PAKCS when multiple rules are applicable
some rule is going to be applied before some other and if the application of the first rule does
not terminate the second rule is never applied.

When defining a function, Curry allows the programmer to define a rule, called a default
rule [8] that is applied only if all the other rules, that in this context we call standard, cannot
be applied. The processing of default rules require the Curry preprocessor. It is not part of
PAKCS but the preprocessor can easily be installed by the Curry package manager with the
following commands (see also Section 5.2):

> cypm update
> cypm install currypp

After the installation of the Curry preprocessor,1 one can use default rules in a program by
placing the following line at the beginning of the source program.

{-# OPTIONS_CYMAKE -F --pgmF=currypp --optF=defaultrules #-}

We recall that a standard rule r is applicable to an expression e iff e and the left-hand side of
r unify and the condition of r, if any exists, is satisfied by the instantiation of e. For example,
the operation zip is defined with a default rule as follows:

zip (x:xs) (y:ys) = (x,y) : zip xs ys
zip’default __ = []

Since the standard rule is applicable to zip [1] [2], the default rule is ignored so that this
expression is solely reduced to (1,2):zip [] []. Since the standard rule is not applicable to
zip [] [], the default rule is applied and yields the value []. Altogether, the only value of

1The executable currypp of the preprocessor is stored in $HOME/.cpm/bin so that one should have this

directory in the load path.

18

zip [1] [2] is [(1,2)]. However, if some argument has more than one value, we use the
evaluation principle above for each combination. Thus, the call zip ([1] ? []) [2] yields the
two values [(1,2)] and [].

Default rules are useful to regain control after a failed search. For example, consider

looking up the value of a key in a key-value pair list.

lookup (key, _++ [(key,value)] ++_) = Just value
lookup ’default _ = Nothing

If the key of a search is not in a list l, the call lookup l returns Nothing instead of failing.

Important note: Default rules can only be added to operations defined at the top-level
(i.e., not to locally defined operations, see Section 3.13). A reason for this restriction is that
default rules are applied after searching for all possibilities to apply a previous standard rule.
With local definitions, the precise scope of the “previous” search is difficult to define.

3.6 User-defined Types

A type is a set of values. Some common types, presented in Section 3.3, are built into the
language and the programmer does not declare them. All other types used in a program must
be declared by the programmer. The classification of some types as builtin vs. user-defined
is only a matter of convenience. Builtin and user-defined types are conceptually very similar.
In fact, the declaration of some builtin types could have been left to the programmer. For
example:

data Boolean = False | True

is exactly how the builtin “Boolean” type would be declared if it were not builtin. In this
declaration, the identifier “Boolean” is referred to as a type constructor , whereas the iden-
tifiers “False” and “True” are referred to as data constructors. The following declarations,
very similar to the previous one, define plausible types “WeekDay” and “PrimaryColor”.

data WeekDay = Monday | Tuesday | Wednesday | Thursday | Friday

data PrimaryColor = Red | Green | Blue

All these types are finite, i.e., they define a finite set of values, and resemble enumerated
types in the Pascal or C languages.

The declaration of an infinite type is similar, but as one should expect, must be (directly
or indirectly) recursive. The following declaration defines a binary tree of integers. We
recall that the typical definition of this type says that a binary tree is either a leaf or it is
a branch consisting of two binary trees. Not surprisingly, this definition is recursive which
accounts for an infinity of trees. The words “leaf” and “branch” are conventional names used
to distinguish the two kinds of trees and have no other implicit meaning. Often, branches
include a decoration, a value of some other arbitrary type. If a tree T is a branch, the two
trees in the branch are referred to as the left and right children of T . A declaration defining
binary trees where the decoration is an integer follows:

19

data IntTree = Leaf | Branch Int IntTree IntTree

All the following expressions are values of type “IntTree”:

Leaf
Branch 0 Leaf Leaf
Branch 7 (Branch 5 Leaf Leaf) (Branch 9 Leaf Leaf)

The first tree is a leaf and therefore it contains no decoration. The second tree contains a
single decoration, “0”, and two children both of which are leaves. The third tree contains
three decorations. Binary trees are interesting because many efficient searching and sorting
algorithms are based on them.

User-defined types can be parameterized by means of other types similar to the builtin
type list introduced in Section 3.3. These types are called polymorphic. For example, if
the type of the decoration of a binary tree is made a parameter of the type of the tree, the
result is a polymorphic binary tree. This is achieved by the following declaration [Browse
Program][Download Program]:

data BinTree a = Leaf | Branch a (BinTree a) (BinTree a)

The identifier “a” is a type variable. Observe that the type variable not only defines the type
of the decoration, but also the type of the subtrees occurring in a branch. In other words, the
type that parameterizes a tree also parameterizes the children of a tree. The type variable
can be implicitly or explicitly bound to some type, e.g., “Int” or “WeekDay” defined earlier.
For example, a function that looks for the string “Curry” in a tree of strings is defined as
[Browse Program][Download Program]:

findCurry Leaf
findCurry (Branch x l r) = x == "Curry" || findCurry l || findCurry r

= False

The type of the argument of function “findCurry” is “BinTree String”. The binding of
type “String” to the type variable of the definition of the polymorphic type “BinTree” is
automatically inferred from the definition of function “findCurry”.

A polymorphic type such as “BinTree” can be specialized by binding its variable to a

specific type by an explicit declaration as follows [Browse Program][Download Program]:

type IntTree = BinTree Int

where “type” is a reserved word of the language. This declaration defines “IntTree” as
a synonym of “BinTree Int”. The synonym can be used in type declarations to improve
readability. The following example defines a function that tallies all the decorations of a tree
of integers [Browse Program][Download Program]:

total :: IntTree -> Int
total Leaf
= 0
total (Branch x l r) = x + total l + total r

Exercise 4 Pretend that list is not a builtin type, with special syntax, of the language.
Define your own type list. Define two functions on this type, one to count how many elements

20

are in a list, the other to find whether some element is in a list. [Browse Answer][Download
Answer]

3.7 Lists

The type list is builtin or predefined by the language. This type could be easily defined by
the programmer, see Exercise 4, except that the language allows the representation of lists in
a special notation which is more agile than that that would be available to the programmer.
The following statement defines important concepts of a list:

A list is either nil or it is a cons consisting of an element, referred to as the head
of the list, and another list, referred to as the tail of the list.

The nil list is denoted by “[]”, which is read “nil”. A cons list, with head h and tail t
is denoted by “h:t”. The infix operator “:”, which is read “cons”, is right associative with
precedence 5. A list can also be denoted by enumerating its elements, e.g., “[u,v,w]” is a list
containing three elements, “u”, “v” and “w”, i.e., it is just another notation for “u:v:w:[]”.
The number of elements is arbitrary. The elements are enclosed in brackets and separated
by commas.

The following functions concatenate two lists and reverse a list, respectively. The
“Prelude” defines the first one as the infix operator “++” and the second one, much more
efficiently, as the operation “reverse”.

conc []
ys = ys
conc (x:xs) ys = x : conc xs ys

rev []
rev (x:xs) = conc (rev xs) [x]

= []

Several ad hoc notations available for lists are described in Sections 4.2.3 and 4.2.4.

A key advantage of these special notations for lists is a reduction of the number of paren-
theses needed to represent list expressions in a program. This claim can be easily verified by
comparing the builtin notation with the ordinary notation which was the subject of Exercise 4.

3.8 Strings

Although “String” is a predefined type (see Section 3.3), there are no special operations
on strings. The reason is that “String” is just another name for “[Char]”, i.e., strings are
In addition, Curry provides a handy notation for string
considered as lists of characters.
constants, i.e., the string constant

"hello world"

is identical to the character list

[’h’,’e’,’l’,’l’,’o’,’ ’,’w’,’o’,’r’,’l’,’d’]

21

Thus, any operation applicable to arbitrary lists can also be applied to strings. For instance,
the prelude defines an infix operator “++” to concatenate lists and the function “reverse”
to reverse the order of all lists elements (similarly to conc and rev in Section 3.7). Thus, we
can also use them to operate on strings:

Prelude> "Hi"++"Hi"
"HiHi"
Prelude> reverse "hello"
"olleh"

3.9 Tuple

The word “tuple” is a generic name for a family of related types. A tuple in a program is
similar to a tuple in mathematics, i.e., a fixed length sequence of values of possibly different
types. Examples of tuples are pairs and triples. They could be defined by the programmer
as follows:

data Pair a b = Pair a b

data Triple a b c = Triple a b c

These types are polymorphic. Observe the two occurrences of the identifiers “Pair” and
“Triple” in the above declarations. The occurrence to the left names a type constructor,
whereas the occurrence to the right names a data constructor. These symbols are overloaded .
However, this kind of overloading causes no problems since type expressions are clearly sep-
arated from value expressions. The type variables “a”, “b”. . . can be bound to different
types.

For example, the information system of a “Big & Tall” shoe store declares a function that

defines the largest size and width of each model [Browse Program][Download Program]:

data Width = C | D | E | EE | EEE | EEEE
largest "New Balance 495" = Pair 13 EEE
largest "Adidas Comfort"
...

= Pair 15 EE

The language predefines tuples and denotes them with a special notation similar to the
standard mathematical notation. Using predefined tuples, the above function is coded as:

largest "New Balance 495" = (13,EEE)
largest "Adidas Comfort"
...

= (15,EE)

Tuples are denoted by a fixed-length sequence of comma-separated values between parenthe-
ses. There is no explicit data constructor identifier. The type of a tuple is represented as a
tuple as well, e.g., the type of “largest” can be defined as:

largest :: String -> (Int,Width)

22

3.10 Type classes

A type class defines a generic interface abstracting some common feature over a variety of
types. For example, many numeric structures, such as integer, vectors and matrices, allow
the addition of elements in the structure. We capture the property of “being addable” as
follows:

class Addable a where

(+) :: a ->

a

-> a

The variable a is a type parameter. The identifier “+” is chosen because we are generalizing
addition, but it is not the usual addition of integers. Any symbols would acceptable:

To say that some structure is addable we use an instance declaration. For example, the
following declaration states that the integers are addable and the addition operation is the
addition function defined in the Prelude.

instance Addable Int where
x + y = x Prelude.+ y

Next, we represent vectors (without an explicit data declaration) as lists of addables and we
define the addition of vectors as the component-wise addition of their elements:

instance Addable a => Addable [a] where

xs + ys = zipWith (+) xs ys

The symbol “+” refers to the same symbol defined in the Addable type class and it is applied
to the vectors’ elements. With these definition we can add two vectors as follows:

testv :: [Int]
testv = [1,2,3] + [4,5,6]

Exercise 5 Define a matrix as follows:

data Matrix a = Matrix [[a]]

and make it addable using an instance declaration. [Browse Program][Download Program]

3.11 Higher-Order Computations

The arguments of a function can be functions themselves. This feature is banned or restricted
by many programming languages. E.g., in C only a pointer to a function can be passed as a
parameter to another function.

A function that takes an argument of function type is referred to as a higher-order func-
tion. Loosely speaking, a higher-order function is computation parameterized by another
computation. We show the power of this feature with a simple example. The function
“sort”, shown below, takes a list of numbers and sorts them in ascending order. On non-
empty arguments, the function “sort” recursively sorts the tail and inserts the head at the

23

right place in the sorted tail. This algorithm becomes inefficient as lists grow longer, but it
is easy to understand [Browse Program][Download Program]:

sort []
sort (x:xs) = insert x (sort xs)

= []

insert x [] = [x]
insert x (y:ys) | x <= y

= x : y : ys

| otherwise = y : insert x ys

To sort a list in descending order or to sort a list of a different type, a new function must be
coded.

An alternative is to code a sort function where the ordering criterion is an argument.
The overall structure of the function is the same. The new argument, the first one of each
function, is denoted by “f”. This argument is a function that takes two arguments and
returns “True” if and only if the first argument must appear before the second argument in
the output list [Browse Program][Download Program]:

sort _ []
sort f (x:xs) = insert f x (sort f xs)

= []

insert _ x [] = [x]
insert f x (y:ys) | f x y

= x : y : ys

| otherwise = y : insert f x ys

For example:

HOInsertionSort > sort (<=) [3,5,1,2,6,8,9,7]
[1,2,3,5,6,7,8,9]
HOInsertionSort > sort (>) [3,5,1,2,6,8,9,7]
[9,8,7,6,5,3,2,1]

In the above expressions, the operators “<=” and “>” are the functional arguments. The
parentheses around them are necessary, since these functions are identified by infix operators.
Without parentheses, the expression “sort <= [3,5,1,2,6,8,9,7]” would test whether the
left argument of “<=” is smaller than the right argument, which is meaningless.

Observe that the first version of the “sort” function constrains the elements of the input
list to be numbers, since these elements are arguments of “<=”. In the second, higher-order
version, the type of the elements of the input list is unconstrained. Thus, the function can
be applied to lists of any type as long as a suitable ordering criterion for the type of the list
elements is provided.

Higher-order computations involve a functional argument. Sometimes, the corresponding
argument in a call, which is a function, is referenced only in the call itself. In this case, it is
appropriate to use an anonymous function. For example, suppose that an elementary school
information system represents classes with a grade and a section. The grade is a number in
the range 1 through 5 and the section is a letter, a, b ... The following ordering criterion
sorts the classes in a “natural” (lexicographic) order [Browse Program][Download Program]:

24

sortClasses xs = sort lex xs

where lex (x,y) (u,v) = x<u || x==u && ord y <= ord v

A more compact and informative formulation uses an anonymous function as follows [Browse
Program][Download Program]:

sortClasses xs = sort (\(x,y) (u,v) -> x<u || x==u && ord y <= ord v) xs

Observe that pattern matching is normally used in the definition of the above anonymous
function.

3.12 Lazy Evaluation

The evaluation of an expression t is the process of obtaining a value v from t.

A value is an expression consisting only of builtin literals and/or data constructors
and/or variables.

The value v is obtained from t by replacing an instance of the left-hand side of a rule with the
corresponding instance of the right-hand side. For example, referring to the function square
defined in Section 3.5.1:

square x = x * x

an instance of square x is replaced with the corresponding instance of x ∗ x. For example,
4 + square (2 + 3) is replaced by 4 + (2 + 3) ∗ (2 + 3).

The evaluation of an expression t proceeds replacement after replacement until an ex-
pression v in which no more replacements are possible is obtained. If v is not a value, the
evaluation fails, otherwise v is the result of a computation of t. For example, the following
function head computes the first element of a (non-null) list:

head (x:_) = x

An attempt to evaluate “head []” fails, since no replacement is possible and the expression
is not a value since it contains a function.

Often, an expression may contain several distinct replaceable subexpressions, e.g., from
(2 + 3) ∗ (2 + 3) we can obtain both 5 ∗ (2 + 3) and (2 + 3) ∗ 5. Even a single subexpression
may allow several distinct replacements when non-deterministic functions are involved. The
order in which different subexpressions of an expression are replaced is not determined by
a program. The choice is made by an evaluation strategy. The semantics of the language
guarantees that any value obtainable from an expression is eventually obtained. This property
is referred to as the completeness of the evaluation. To ensure this completeness, expressions
must be evaluated lazily. A lazy strategy is a strategy that evaluates a subexpression only if
its evaluation is unavoidable to obtain a result. The following example clarifies this delicate
point.

The following function computes the list of all the integers beginning with some initial

value n [Browse Program][Download Program]:

25

from n = n : from (n+1)

An attempt to evaluate “from 1” aborts with a memory overflow since the “result” would
be the infinite term:

[1,2,3,...

However, the function “from” is perfectly legal. The following function returns the n-th
element of a list:

nth n (x:xs) = if n==1 then x else nth (n-1) xs

The expression “nth 3 (from 1)” evaluates to 3 despite the fact that “from 1” has no
(finite) value:

lazy> nth 3 (from 1)
3

The reason is that only the third element of “from 1” is needed for the result. All the other
elements, in particular the infinite sequence of elements past the third one, do not need to
be evaluated.

Infinite data structures are an asset in the conjunction with lazy evaluation. Programs
that use infinite structures are often simpler than programs for the same problem that use
finite structures. E.g., a function that computes a (finite) prefix of “[1,2,3,...” is more
complicated than “from”. Furthermore, the functions of the program are less interpedendent
and consequently more reusable. E.g., the following function, initially applied to 0 and 1,
computes the (infinite) sequence of the Fibonacci numbers:

fibolist x0 x1 = x0 : fibolist x1 (x0+x1)

The function “nth” can be reused to compute the n-th Fibonacci number through the eval-
uation of the expression “nth n (fibolist 0 1)”, e.g.:

lazy> nth 5 (fibolist 0 1)
3

The evaluation strategy of the PAKCS compiler/interpreter, which is used for all our exam-
ples, is lazy, but incomplete. The strategy evaluates non-deterministic choices sequentially
instead of concurrently.

All the occurrences of same variables are shared. This design decision has implications
both on the efficiency and the result of a computation. For example, consider again the
following definition:

square x = x * x

The evaluation of say square t goes through t * t. Without sharing, t would be evaluated
twice, each evaluation independent of the other. If t has only one value, the double eval-
uation would be a waste. If t has more then one value, this condition will be discussed in
Section 3.13.1, sharing produces the same value for both occurrences.

26

3.13 Local Definitions

The syntax of Curry implicitly associates a scope to each identifier, whether a function, a
type, a variable, etc. Roughly speaking the scope of an identifier is where in a program the
identifier can be used. For example, the scope of a variable occurring in the left-hand side of
a rule is the rule itself, which includes the right-hand side and the condition, if any. In the
following code:

square x = x * x

cube

x = x * square x

the variable identified by “x” in the definition of “square” is completely separated from the
variable identified by “x” as well in the definition of “cube”. Although these variables share
the same name, they are completely independent of each other.

Curry is statically scoped , which means that the scope of an identifier is a static property
of a program, i.e., the scope depends on the textual layout of a program rather than on an
execution of the program.

The scope of an identifier is the region of text of a program in which the identifier
can be referenced.

In most cases, the programmer has no control on the scope of an identifier—and this is
a good thing. The scope rules are designed to make the job of the programmer as easy
and safe as possible. The context in which an identifier occurs determines the identifier’s
scope. However, there are a couple of situations where the programmer can limit, by mean
of syntactical constructs provided by the language, the scope of an identifier. Limiting the
scope of an identifier is convenient in some situations. For example, it prevents potential
name clashes and/or it makes it clearer that a function is introduced only to simplify the
definition of another function. A limited scope, which is referred to as a local scope, is the
subject of this section.

Curry has two syntactic constructs for defining a local scope: the “where” clause and the

“let” clause. They are explained next.

3.13.1 Where Clauses

A “where” clause creates a scope nested within a rewrite rule. The following example defines
an infix operator, “**”, for integer exponentiation [Browse Program][Download Program]:

infixl 8 **

a ** b | b >= 0 = accum 1 a b
where accum x y z | z == 0

= x

| otherwise = accum aux (y * y) (z ‘div‘ 2)

where aux = if (z ‘mod‘ 2 == 1) then x * y else x

For example, 2 **5 = 25 = 32. There are several noteworthy points in the above code
fragment. The scope of the function “accum” is limited to the rewrite rule of “**”. This

27

is convenient since the purpose of the former is only to simplify the definition of the latter.
There would be no gain in making the function “accum” accessible from other portions of a
program. The function “accum” is nested inside the function “**”, which is nesting “accum”.
The rewrite rule defining “accum” is conditional. Pattern matching of the arguments and
non-determinism can occur as well in local scopes. Finally, there is yet another local scope
nested within the rewrite rule of the function “accum”. The identifier “aux” is defined in this
scope and can be referenced from either condition or right-hand side of the rewrite rule of
the function “accum”.

The right-hand side of the rewrite rule defining “aux” references the variables “x”, “y”
and “z” that are arguments of “accum” rather than “aux” itself. This is not surprising since
the scope of these variables is the rewrite rule of “accum” and “aux” is defined within this
rule.

The identifier “aux” takes no arguments. Because it occurs in a local scope, “aux” is
considered a local variable instead of a nullary function. The language does not make this
distiction for non-local identifiers, i.e., identifiers defined at the top level. The evaluation of
local variables differs from that of local functions. All the occurrences of a variable, whether
or not local, share the same value. This policy may affect both the efficiency of a program
execution and the result of computations involving non-deterministic functions. The following
example clarifies this subtle point [Browse Program][Download Program]:

coin = 0
coin = 1

g = (x,x) where x = coin

f = (coin,coin)

The values of “g” are (0,0) and (1,1) only, whereas the values of “f” also include (0,1)
and (1,0). The reason of this difference is that the two occurrences of “coin” in the rule
of “f” are evaluated independently, hence they may have different values, whereas the two
occurrences of “x” in the rule of “g” are “shared,” hence they have the same value.

There is one final important aspect of local scoping. A local scope can declare an identifier
already declared in a nesting scope—a condition referred to as shadowing. An example of
showing is shown below:

f x = x where x = 0

The variable “x” introduced in the where clause shadows the variable with the same name
introduced in the rewrite rule left-hand side. The occurrence of “x” in the right-hand side is
bound to the former. Hence, the value “f 1” is 0. This situation may be a source of confusion
for the beginner. The PAKCS compiler/interpreter detects this situation and warns the
programmer as follows [Browse Program][Download Program]:

Prelude> :l shadow
...
shadow.curry, line 1.3: Warning:

Unused declaration of variable ‘x’

28

shadow.curry, line 1.15: Warning:

Shadowing symbol ‘x’, bound at: shadow.curry, line 1.3

The second warning reports that the identifier in line 1, column 15, the variable “x” in the
local scope, shadows some identifier(s) with the same name. The first warning reports that
the identifier in line 1, column 3, the variable “x” argument of “f”, is not used. This is
a consequence of its shadowing and gives an important clue that the occurrence of “x” in
the right-hand side of the rewrite rule of “f” is bound to the local variable rather than the
argument.

3.13.2 Let Clauses

A “let” clause creates a scope nested within an expression. The concept is very similar to
a “where” clause, but the granularity of the scope is finer. For example, the program for
integer exponentiation presented earlier can be coded using “let” clauses as well [Browse
Program][Download Program]:

infixl 8 **

a ** b | b >= 0 =

let accum x y z | z == 0

= x

| otherwise =

in

accum 1 a b

let aux = if (z ‘mod‘ 2 == 1) then x * y else x
in

accum aux (y * y) (z ‘div‘ 2)

Using a “let” declaration is more appropriate than a “where” declaration for the definition of
operation “aux”. With a “let” declaration, the scope of the identifier “aux” is the right-hand
side of the second conditional rule of the function “accum” instead of the whole rule.

3.13.3 Layout

By contrast to most languages, Curry programs do not use a printable character to separate
syntactic constructs, e.g., one rewrite rule from the next. Similar to Haskell, Curry programs
use a combination of an end-of-line and the indentation of the next line, if any. A Curry
construct, e.g., a “data” declaration or a rewrite rule, terminates at the end of a line, unless
the following line is more indented. For example, consider the following layout:

f = g
h...

Since “f” starts in column 1 and “h” starts in column 2, the right-hand side of the rule defining
“f” consists in the application of “g” to “h” to “...” By contrast, with the following layout:

f = g
h...

the right-hand side of the rule defining “f” consists of “g” only. Since “h” starts in the same
column as “f”, this line is intended as a new declaration.

29

The layout style described above goes under the name “off-side rule”. The examples of
Sections 3.13.1 and 3.13.2 shows how the off-side rule applies to “where” and “let” clauses.

3.14 Variables

Most of the programs discussed so far are functional. They declare data and/or define
functions. An execution of the program is the functional-like evaluation of an expression.
Curry is a functional logic programming language. It adds two crucial features to the model
outlined above: non-determinism, which was discussed in Section 3.5.4, and logic variables,
which are discussed in this section.

3.14.1 Logic Variables

A logic variable differs from the variables introduced by the left-hand side of a rewrite rule.
A variable introduced by the left-hand side of a rewrite rule, also called pattern variable,
stands for any expression (of an appropriate type). For example, the following definition:

head (x:xs) = x

is read as “for all expressions x and xs the head of (the list) (x:xs) is x.” Since Curry is
strongly typed, the type of xs must be list, otherwise the program would be invalid, but no
other conditions are imposed on xs.

A logic variable either is a variable occurring in an expression typed by the user at the
interpreter prompt or it is a variable in the condition and/or right-hand side of a rewrite rule
which does not occur in the left-hand side. We show an example of both. The operation
“==”, called Boolean equality, is predefined in Curry. Hence, one can (attempt to) evaluate:

Prelude> z==2+2

where z free

Every variable in a query, such as “z” in the above example, is a logic variable that initially
is not bound to any value. We will discuss shortly why queries with variables may be useful
and how variables are handled.

The second kind of logic variable is shown in the following example:

path a z = edge a b && path b z

where b free

The intuition behind the names tells that in a graph there exists a path from a node a to a
node z if there exists an edge from the node a to some node b and a path from the node b
to the node z. In the definition, both “a” and “z” are ordinary (rule) variables, whereas “b”
is a logic variable. Variables, such as “b”, which occur in the condition and/or right-hand
side of a rule, but not in the left-hand side, are also called extra variables. Extra variables
are explicitly declared “free” in a “where” or “let” clause as shown in the example, or are
anonymous.

30

3.14.2 Evaluation

The evaluation of expressions containing logic variables is a delicate issue and the single most
important feature of functional logic languages. There are two approaches to deal with the
evaluation of expressions containing logic variables: residuation and narrowing.

Let e be an expression to evaluate and v a variable occurring in e. Suppose that e cannot
be evaluated because the value of v is not known. Residuation suspends the evaluation of e.
If it is possible, we will address this possibility shortly, some other expression f is evaluated
in hopes that the evaluation of f will bind a value to v.
If and when this happens, the
evaluation of e resumes. If the expression f does not exists, e is said to flounder and the
evaluation of e fails. For example, this is what would happen for the query we showed earlier:

Prelude> z == 2+2
*** Warning: there are suspended constraints (for details: ":set +suspend")

where z free

By contrast to residuation, if e cannot be evaluated because the value of v is not known,
narrowing guesses a value for v. The guessed value is uninformed except that only values
that make it possible to continue the computation are chosen.

The operation “=:=”, called constrained equality, is predefined in Curry. This operation
is similar to the Boolean equality discussed earlier except that it returns only True (if the
equality can be satisfied) or it fails, i.e., it does not return False if both sides are not evaluable
to identical values. Since this operation succeeds only if both sides have identical values, it
also binds logic variables if this is necessary to make the sides identical. Thus:

Prelude> z =:= 2+2 where z free
{z=4} True

Therefore, this operation can be used to express an equational constraint that must be
satisfied to compute some result.

3.14.3 Flexible vs. Rigid Operations

Operations that residuate are called rigid , whereas operations that narrow are called flexible.
All defined operations are flexible whereas most primitive operations, like arithmetic opera-
tions, are rigid since guessing is not a reasonable option for them. For example, the prelude
defines a list concatenation operation as follows:

infixr 5 ++
...
(++)
++ ys
[]
(x:xs) ++ ys

:: [a] -> [a] -> [a]
= ys
= x : xs ++ ys

Since the operation “++” is flexible, we can use it to search for a list satisfying a particular
property:

Prelude> xs ++ [3,4] =:= [1,2,3,4]
{xs=[1,2]} True

where xs free

31

On the other hand, predefined arithmetic operations like the addition “+” are rigid. Thus, a
call to “+” with a logic variable as an argument flounders:

Prelude> x + 2 =:= 4
*** Warning: there are suspended constraints (for details: ":set +suspend")

where x free

For ground expressions, i.e., expressions without logic variables, the flex/rigid status of a
function makes no difference. In the context of concurrent/distributed object-oriented pro-
gramming, rigid user-defined functions can be useful. For this purpose, there is a primitive
operation ensureNotFree that evaluates its argument and suspends if it is a logic variable.

3.14.4 Programming

Often, programming with variables leads to conceptually simple, terse and elegant code at
the cost of an acceptable loss of efficiency. The logic variables of a program and/or a query
are not much different from the variables that are typically used to solve algebra or geometry
problems. In both cases, some unknown entities of the problem are related to each other by
expressions involving functions. Narrowing allows us to evaluate these expressions—and in
the process to find values for the variables. The simplest application, and the most familiar
for those used to solve algebra and geometry problems with variables, is when the expression
to evaluate is an equation.

In later chapters, we will discuss some problems that are conveniently solved if one uses
variables in computations. Here we want to present a simple, but non-trivial, motivating
example. The problem is to parse a string that represents an expression. To keep the
example small, our expressions are functional terms whose syntax is defined by:

term

args

::= identifier

| identifier ’(’ args ’)’

::= term

| term ’,’ args

identifier ::= any non-null string of alphabetic characters

For example, "f(g(a,b))" is a term described by the above syntax. When a term is rep-
resented as a string, answering questions such as how many arguments “g” has, is more
complicated and less efficient than it needs to be. A parser converts a term from its string
representation into a data structure that makes easy and efficient answering questions of that
kind. Thus, the first step to build a parser is to design a suitable type to represent a term.
Our choice is: [Browse Program][Download Program]:

data Term = Term String [Term]

Note that the occurrence of “Term” to right of the “=” character is a data constructor, whereas
the two other occurrences are type constructors. The “Term” identifier is overloaded by the
declaration.

Using this data structure, we represent a function identifier with a string and the function’s
arguments with a list of terms. For example, the term "f(g(a,b))" would be represented
as “Term "f" [Term "g" [Term "a" [],Term "b" []]]”. The following operation parses

32

a term [Browse Program][Download Program]:

parseTerm (fun++"("++args++")") | all isAlpha fun = Term fun (parseArgs args)
parseTerm s | all isAlpha s = Term s []

The elements of the program relevant to our discussion are the variables “fun” and
“args”. The functional pattern in the first rule acts similarly to solving the equation
“s =:= fun++"("++args++")"” in which “s” is the argument of “parseTerm”. The first
condition of the first rule of the operation “parseTerm” instantiates these variables and en-
sures that “fun” is an alphabetic identifier. The operation “isAlpha”, defined in the library
“Data.Char”, ensures that its argument, a character, is alphabetic. The operation “all” is
defined in the “Prelude”. The combination “all isAlpha” ensures that all the characters
of a string are alphabetic.

If a term has arguments, these arguments are parsed by the operation “parseArgs”. The
overall design of this operation is very similar to that of “parseTerm”. In this case, though,
a string is decomposed according to different criteria [Browse Program][Download Program]:

parseArgs (term++","++terms) = parseTerm term : parseArgs terms
parseArgs s = [parseTerm s]

One could code more efficient versions of this parser. This version is very simple to understand
and it is the starting point for the design of more efficient versions that will be discussed later
in this book.

3.15 Input/Output

As we have seen up to now, a Curry program is a set of datatype and function declarations.
Functions associate result values to given input arguments. However, application programs
must also interact with the “outside” world, i.e., they must read user input, files etc. Tradi-
tional programming languages addresses this problem by procedures with side effects, e.g., a
procedure read that returns a user input when it is evaluated. Such procedures are problem-
atic in the context of Curry. Firstly, the evaluation time of a function is difficult to control
due to the lazy evaluation strategy (see Section 3.12). Secondly, the meaning of functions
with side effects is unclear. For instance, if the function readFirstNum returns the first num-
ber in a particular file, the evaluation of the expression “2*readFirstNum” yields different
values at different points of time (if the contents of the file changes).

Curry solves this problem with the “monadic I/O” concept much like that seen in the
functional language Haskell [23]. In the monadic approach to I/O, a program interacting with
the outside world is considered as a sequence of actions that change the state of the outside
world. Thus, an interactive program computes actions which are applied to a given state
of the world (this application is finally done by the operating system that executes a Curry
program). As a consequence, the outside world is not directly accessible but can be only
manipulated through actions that change the world. Conceptually, the world is encapsulated
in an abstract datatype which provides actions to change the world. The type of such actions
is “IO t” which is an abbreviation for

33

World -> (t,World)

where “World” denotes the type of all states of the outside world. If an action of type “IO t”
is applied to a particular world, it yields a value of type t and a new (changed) world.

For instance, getChar of type “IO Char” is an action which reads a character from the
standard input whenever it is executed, i.e., applied to a world. Similarly, putChar of type
“Char -> IO ()” is an action which takes a character and returns an action which, when
applied to a world, puts this character to the standard output (and returns nothing, i.e.,
the unit type). The important point is that values of type World are not accessible to the
programmer — she/he can only create and compose actions on the world.

Actions can only be sequentially composed, i.e., one can built a new action that consists

of the sequential evaluation of two other actions. The predefined function

(>>) :: IO a -> IO b -> IO b

takes two actions as input and yields an action as the result. The resulting action consists of
performing the first action followed by the second action, where the produced value of the first
action is ignored. For instance, the value of the expression “putChar ’a’ >> putChar ’b’”
is an action which prints “ab” whenever it is executed. Using this composition operator, we
can define a function putStrLn (which is actually predefined in the prelude) that takes a
string and produces an action to print this string:

putStrLn []
putStrLn (c:cs) = putChar c >> putStrLn cs

= putChar ’\n’

If two actions should be composed and the value of the first action should be taken into ac-
count before performing the second action, the actions can be also composed by the predefined
function

(>>=) :: IO a -> (a -> IO b) -> IO b

where the second argument is a function taking the value produced by the first action as
input and performs another action. For instance, the action

getChar >>= putChar

is of type “IO ()” and copies, when executed, a character from standard input to standard
output. Actually, this composition operator is the only elementary one since the operator
“>>” can be defined in terms of “>>=”:

a1 >> a2

=

a1 >>= \_ -> a2

There is also a primitive “empty” action

return :: a -> IO a

that only returns the argument without changing the world. Thus, one can define an “empty”
action which returns nothing (i.e., the unit type) as

done :: IO ()

34

done = return ()

Using these primitives, we can define more complex interactive programs. For instance, an
I/O action that copies all characters from the standard input to the standard output up to
the first period can be defined as follows [Browse Program][Download Program]:

echo = getChar >>= \c -> if c==’.’ then return ()

else putChar c >> echo

Obviously, such a definition is not well readable. Therefore, Curry provides a special syntax
extension for writing sequences of I/O actions, called the do notation. The do notation follows
the layout style (see Section 3.13.3), i.e., a sequence of actions is vertically aligned so that

do putChar ’a’
putChar ’b’

is the same as “putChar ’a’ >> putChar ’b’”, and

do c <- getChar
putChar c

is just another notation for “getChar >>= \c -> putChar c”. Thus, the do notation allows
a more traditional style of writing interactive programs. For instance, the function echo
defined above can be written in the do notation as follows:

echo = do c <- getChar

if c==’.’

then return ()
else do putChar c

echo

As a further example, we show the definition of the I/O action getLine as defined in the
prelude. getLine as an action that reads a line from the standard input and returns it:

getLine :: IO String
getLine = do c <- getChar

if c==’\n’

then return []
else do cs <- getLine
return (c:cs)

Curry also provides predefined I/O actions for reading files and accessing other parts of the
environment. For instance, “readFile f” is an action which returns the contents of file f
and “writeFile f s” is an action writing string s into the file f. This allows us to define a
function that copies a file with transforming all letters into uppercase ones in a very concise
way (toUpper is defined in the standard character library Data.Char and converts lowercase
into uppercase letters) [Browse Program][Download Program]:

convertFile input output = do

s <- readFile input
writeFile output (map toUpper s)

35

The function toUpper, defined in the library “Data.Char”, takes a character. If the character
is lower case and alphabetic, then it returns it in upper case, otherwise it returns it unchanged.
The operation “map” is defined in the “Prelude” and discussed in detail in Section 4.2.6. The
combination “map toUpper” transforms all the characters of a string to upper case.

The monadic approach to input/output has the advantage that there are no “hidden”
side effects—any interaction with the outside world can be recognized by the IO type of
the function. Thus, functions can be evaluated in any order and the only way to combine
I/O actions is a sequential one, as one would expect also in other programming languages.
However, there is one subtle point. If a function computes non-deterministically different I/O
actions, like in the expression “putStrLn (show coin)” (see Section 3.13.1 for the definition
of the non-deterministic function coin; show is a predefined function that converts any value
into a string), then it is not clear which of the alternative actions should be applied to the
world. Therefore, Curry requires that non-determinism in I/O actions must not occur. For
instance, we get a run-time error if we evaluate the above expression:

localvar> putStr (show coin)
ERROR: non-determinism in I/O actions occurred!

One way to ensure the absence of such errors is the encapsulation of all search between I/O
operations, e.g., by using set functions.

Exercise 6 Define an I/O action fileLength that reads the name of a file from the user
and prints the length of the file, i.e., the number of characters contained in this file. [Browse
Answer][Download Answer]

36

Part II

Programming with Curry

37

Chapter 4

Programming in Curry

4.1 Overview

Lists and trees are datatypes frequently used in programming.

• A list abstracts a sequence of elements. The elements of a list are implicitly ordered by
the list structure. Therefore, a list is a convenient representation for queues, stacks and
other linear structures. As list can also be used for representing collections, typically
unordered, such as a set, by ignoring or hiding the implicit order of the elements.

• A tree is a multibranching data structure that abstracts a hierarchy of values or con-
ditions. It naturally represents taxonomies or classifications and therefore it is useful
for problems involving search. Trees come in many variants, but all consists of a value
called root and some subtrees called children. Similar to lists, trees can be used for
representing collections.

This section describes in some detail both these datatypes and how they help solve some typ-
ical problems, e.g., sorting a collection of elements or searching for an element in a collection.

4.2 Lists

4.2.1 Notation

A List is a simple algebraic polymorphic datatype defined by two constructors conventionally
referred to as Nil and Cons. Within the Curry language, the datatype “List of a” would be
declared as:

data List a = Nil | Cons a (List a)

Because lists are one of the most frequently used types in functional, logic and functional logic
programs, many languages offer several special notations for lists. In Curry, the type “List
of a”, where a is a type variable that stands for any type, is predefined and denoted by [a].
Likewise, [] denotes the constructor Nil, the empty list, and “:” denotes the constructor
Cons, which takes an element of type a and a list of a’s. Thus, with a syntax that is not
legal in Curry, but is quite expressive, the above declaration would look like:

38

data [a] = [] | a : [a]

The expression (u:v) denotes the list with the first element u followed by the list v. The
infix operator “:”, which read “cons”, is predefined, right associative and has precedence 5.
This implies that u:v:w is parsed as u:(v:w).

A list can also be denoted by enumerating its elements, e.g., “[u,v,w]” is a list contain-
ing three elements, “u”, “v” and “w”, i.e., it is just another notation for “u:v:w:[]”. This
notation can be used with any number of elements. The elements are enclosed in brackets
and separated by commas. This notation has several advantages over the standard algebraic
notation: lists stand out in a program and references to lists are textually shorter. In par-
ticular, the number of parentheses occurring in the text is reduced. This claim can be easily
verified by comparing the built-in notation with the ordinary notation.

The type list is polymorphic, which means that different lists can have elements of different
types. However, all the elements of a particular list must have the same type. The following
annotated examples show this point [Browse Program][Download Program]:

-- list of integers
digits = [0,1,2,3,4,5,6,7,8,9]

-- list of characters , equivalent to "Pakcs", print with putStr
string = [’P’,’a’,’k’,’c’,’s’]

-- list of list of integers
matrix = [[1,0,2],[3,7,2],[2,8,1],[3,3,4]]

Other special notations available for lists are described in Sections 4.2.3 and 4.2.4.

4.2.2

Inductive Definitions

Many elementary functions on lists are defined by an induction similar to that available for
the naturals. The cases of the induction are conveniently defined by different rules using
pattern matching. For lists, the base case involves defining a function for [] whereas the
inductive case involves defining the function for a list (u:v) under the assumption that the
value of the function for v is available. In a program, this is expressed by a recursive call.
The function that counts the number of elements of a list is emblematic in this respect:

len []
len (u:v) = 1 + len v

= 0

For computing the length of a list, the value of u is irrelevant and u should be replaced by
an anonymous variable in the above definition.

Exercise 7 Code an inductively defined function that takes a list of integers and returns
the sum of all the integers in the list. Hint: the function should return 0 for an empty list.
[Browse Answer][Download Answer]

The prelude defines many useful functions on lists, e.g., “++” for concatenation, “!!” for
indexing, i.e., (l!!i) is the i-th (starting from 0) element of l, etc. We will use some of these

39

functions, after providing a brief explanation, in this section. We might also re-define some
functions already available in the prelude or other libraries when they make good examples.
E.g., the function len discussed above is equivalent to the function length of the prelude.
In Section 4.2.5, we will present the most important list functions available in the prelude.

Functions inductively defined are easy to code, understand and evaluate. Sometimes they
may be inefficient. Below are two definitions of a function to reverse a list. For long lists, the
second one is much more efficient.

slowRev [] = []
slowRev (u:v) = slowRev v ++ [u]

fastRev l = aux l []
where aux [] r = r

aux (u:v) r = aux v (u:r)

A function inductively defined performs a “traversal” of its argument. During this traversal
some computation is performed on each element of the list—this is referred to visiting a
cons—and the result combined with a recursive invocation of the function. Loosely speaking,
the visit can be performed either before the recursive call, or after, or both. The following
example shows how to subtract the minimum element of a list of integers from all the elements
of the list. The function performs a single traversal of its argument. The minimum of the list
is computed (as much as feasible) before the recursive call. The subtraction is computed after
the recursive calls (otherwise the minimum could not be known) [Browse Program][Download
Program]:

submin []
submin (x:xs) = fst (aux (x:xs) x)

= []

where aux []

m = ([],m)

aux (y:ys) m = let (zs,n) = aux ys (min y m)
in (y-n:zs,n)

The function fst, which returns the first element of a pair, is defined in the prelude. The
function min, which returns the minimum of two integers, is defined in the standard prelude.
More complicated computations may lead to more complicated inductive definitions. A

discussion on the structure and the design of inductively defined function is in [1].

Exercise 8 Code an inductively defined function that transposes a matrix represented by a
list of lists (all of the same length). [Browse Answer][Download Answer]

There are a couple of noteworthy alternatives to directly defining inductive functions. One
involves higher-order list functions. Some of these functions are presented in Section 4.2.6.
The other involves narrowing. Lists are a particularly fertile ground for narrowing. Below are
two definitions of the function that computes the last element of a list. The first definition
is inductive, whereas the second is narrowing-based.

inductLast [x]
inductLast (x:y:z) = inductLast (y:z)

= x

narrowLast (_++[e]) = e

40

Observe that narrowLast computes the result by solving the equation “l == ++[e]” in
which “l” is the argument of the call.

4.2.3 Ranges

A special notation is available to define lists containing ranges of integers. The most com-
mon of this notation is “[e1 .. e2]” which denotes the list “[e1, e1 + 1, e1 + 2, · · · , e2]”. For
example:

Prelude> [2 .. 5]
Result: [2,3,4,5] ?
Prelude>

Similarly, the expression “[e ..]” denotes the infinite list of all the integers starting from e.
This list cannot be printed in its entirety, but it can be used in a program if only a finite
portion of the list is needed, because the evaluation strategy is lazy.

The elements in the lists defined by the above expressions are consecutive, i.e., the distance
between adjacent elements is one. The above expressions can be generalized to produce lists
where the distance between adjacent elements is a constant greater than one. This distance
is inferred from the first two elements of the expression. For example:

Prelude> [2, 6 .. 20]
Result: [2,6,10,14,18] ?
Prelude>

Likewise, “[2, 6 ..]” generates the infinite list “[2,6,10,14,. . .]”.

Ranges can be defined using ordinary functions. The prelude defines four functions whose
names start with enumFrom. These functions define in the ordinary syntax the notations for
ranges.

4.2.4 Comprehensions

Another useful notation involving lists goes under the name of list comprehension. A list
comprehension is a notation to construct a list from one or more other lists called generators.
It goes without saying that ranges are simple generators. For example, the infinite sequence of
square and triangular numbers are obtained as follows [Browse Program][Download Program]:

squares
triangles = [x * (x+1) ‘div‘ 2 | x <- [0 ..]]

= [x * x | x <- [0 ..]]

A generator is an expression of the form var <- list. Generators can be nested and/or com-
bined with guards. A guard is a Boolean expression that filters the elements produced by the
generator. For example, if isPrime is a predicate telling whether an integer greater than 2 is
a prime number, the following comprehension is the sequence of the prime numbers [Browse
Program][Download Program]:

primes = [x | x <- [2 ..], isPrime x]

41

In this example, the guard is the Boolean expression (isPrime x). The elements produced
by the generator are passed to the comprehension if and only if the guard holds.

Generators are considered to be nested from left to right. The following example shows
how to compute pairs where the second component is not greater than the first [Browse
Program][Download Program]:

lexPairs = [(x,y) | x <- [0 .. 3], y <- [x .. 3]]

This simple example shows that the second generator (y<-[x .. 3]) is nested within the first
one, since it references the generated elements.

Exercise 9 Compute the Fibonacci sequence using a list comprehension. Hint: compute a
list of pairs of numbers where each pair contains two consecutive Fibonacci numbers. [Browse
Answer][Download Answer]

4.2.5 Basic Functions

The PAKCS compiler/interpreter of Curry is distributed with the prelude, a collection of
primitive and fundamental types and functions, and with several libraries. The prelude and
some of these libraries contain useful list functions. In this section, we informally discuss some
of these functions. The currydoc documentation utility, which is distributed with PAKCS,
should be used for an exhaustive up-to-date consultation of the content of these libraries.

Name

Description

Example(s)

First element of a list
head
All the elements but the first
tail
Length
length
Tell whether it is nil
null
Concatenate two lists
++
n-th element of a list
!!
reverse Reverse the order of the elements
Concatenate all the lists of a list
concat
List of the first n elements
take
All elements but the first n
drop
Boolean conjunction
and
Boolean disjunction
or
Whether a value is in a list
elem
Remove duplicates
nub
Remove the first occurrence of a value
delete

head [1,2] = 1; head [] fails
tail [1,2] = [2]; tail [] fails
length [1,2] = 2
null [1,2] = False
[1,2]++[3] = [1,2,3]
[1,2]!!1 = [2]; [1,2]!!4 fails
reverse [1,2] = [2,1]
concat [[1,2],[3]] = [1,2,3]
take 2 [1,2,3] = [1,2]
drop 2 [1,2,3] = [3]
and [True,False,True] = False
or [True,False,True] = True
elem 2 [1,3,5] = False
nub [1,2,2] = [1,2]
delete 2 [2,1,2] = [1,2];
delete 2 [1] = [1]

Many more functions that operate on lists are defined in the libraries of the PAKCS dis-
tribution (e.g., see the library Data.List which contains the definition of nub and delete
discussed above). The above table is intended to give only a feeling of what is available.

42

4.2.6 Higher-order Functions

Lists are commonly used to represent collections of elements. Some computations of a list
can be expressed by repeatedly applying another, somewhat simpler, computation to all the
elements of the collection. This section discusses some frequently occurring situations of this
kind.

The simplest case is when a list, which we refer to as the result list, is obtained from
another list, which we refer to as the argument list, by applying the same function, say f, to
all the elements of the argument list. This is easily accomplished by defining a new function,
say flist since its analogy to f, as follows:

flist []
= []
flist (x:xs) = f x : flist xs

Although trivial, the definition of flist can be avoided altogether using the function map,
provided by the prelude. The function map is higher-order in that it takes as an argument
the function, in this example f, that is applied to all the arguments of the list. Thus, the
function flist defined above is the same as map f.

The following code, taken from the prelude, shows the type and the definition of map:

:: (a->b) -> [a] -> [b]
map
= []
map _ []
map f (x:xs) = f x : map f xs

It can be seen that the first argument of map is a function from any type a to any type
b. The second argument of map is a list whose elements must have, of course, type a.
The result is a list of type b. For example, suppose that isEven is a function telling
whether an integer is even. Then, the expression (map isEven [0,1,2,3]) evaluates to
[True,False,True,False].

A second frequently used higher-order function on lists is filter. As the name suggests,
filter is used to filter the elements of a list that satisfy some criterion expressed by a
predicate.

The following code, taken from the prelude, shows the type and the definition of filter:

filter
filter _ []
filter p (x:xs) = if p x then x : filter p xs else filter p xs

:: (a -> Bool) -> [a] -> [a]
= []

It can be seen that the first argument of filter is a function from any type a to Bool, i.e., a
predicate. The second argument of map is a list whose elements must have, of course, type a.
The result is again a list of type a. The elements of the result are the elements of the second
argument that satisfy the predicate. For example, as before, suppose that isEven is a func-
tion telling whether an integer is even. Then, the expression (filter isEven [0,1,2,3])
evaluates to [0,2].

The last higher-order function operating on lists that we describe in this section is used
to “combine together” all the elements of a list. For example, a function that adds all the
elements of a list of integers can be defined using a higher-order function and the ordinary

43

addition on integers. Several options should be considered, e.g., whether the elements of a list
are composed starting with the first or the last one, whether the list can be empty and thus
a default value must be supplied, etc. The prelude contains a family of functions, referred to
as folds for this purpose. The names of these functions starts with “fold”.

The following code, taken from the prelude, shows the type and the definition of foldr:

:: (a->b->b) -> b -> [a] -> b
foldr
foldr _ z []
= z
foldr f z (x:xs) = f x (foldr f z xs)

For example, functions that compute the sum, product and maximum of all the elements
of a list of integers are easily defined through foldr as follows [Browse Program][Download
Program]:

= foldr (+) 0
sumList
prodList = foldr (*) 1
maxList

= \l -> foldr max (head l) (tail l)

The last function is more complicated than the previous two, because it is meaningful only for
non-empty lists. The function foldr1, defined in the prelude, would simplify our definition
of maxList.

4.2.7 Set Functions

A non-deterministic function f may return different results for some combination of argu-
ments. The programmer has no control over which of these results an invocation of f returns.
Any result returned by f is completely unrelated to any other result. For some problems,
it may be convenient to consider all the results returned by f as a whole. The device that
returns all the results returned by f for some combination of arguments is called the set
function of f and is typically denoted fS. For example, given:

f x = x ? x+1

the value of fS x is the set {x,x+1} where the details of the representation of this set are
irrelevant to our discussion.

The definition of the set function of a function f separates the non-determinism of f
from any non-determinism of the arguments to which fS is applied [6]. In particular, fS is
deterministic for any f . Referring to the example above, fS (2 ? 4) evaluates to {2,3} and
{4,5} in which the non-determinism originates entirely from the argument.

To ease the definition of set functions, there is a library Control.Search.SetFunctions.
This library defines both a suitable abstraction of a type set to represent the results of a set
function application, and a family of functions set0, set1, . . . Gives a function f of arity n,
the set function of f is provided by the expression setn f . The first argument of setn must
be the identifier of a function of arity n.

For example, consider the problem of computing all the subsets of a set S. This is called
the powerset of S. Let us represent a set with a list. This representation requires some care
to ensure that duplicate elements in a list and the order of the elements in a list are not

44

observable. We ignore these issues since they are irrelevant to our discussion. The following
non-deterministic function returns a subset of its argument, a set represented as a list [Browse
Program][Download Program]:

subset []
subset (x:xs) = x:subset xs
subset xs
subset (_:xs) =

= []

In PAKCS, with the help of the library Control.Search.SetFunctions, we define the power
set of a set as follows:

powerset s = set1 subset s

-- powerset is the set function of subset

For example, the prerequisites for the undergraduate Computer Science courses at Portland
State are abstracted by 16 rules as follows [Browse Program][Download Program]:

isPrereqOf 162 = 161
isPrereqOf 163 = 162
isPrereqOf 200 = 162
...
isPrereqOf 303 = 252
isPrereqOf 303 = 300
isPrereqOf 350 = 252

The meaning is that, e.g., 162 is a direct prerequisite of both 163 and 200 and that, e.g., both
252 and 300 are direct prerequisites of 303. Observe that IsPrereqOf is a many-to-many
relation.

The function to compute all the direct prerequisites of a course is shown below [Browse

Program][Download Program]:

isPrereqOfS course = set1 IsPrereqOf course

4.2.8 Narrowing

Narrowing is a convenient programming feature when dealing with lists. Lists are frequently
used to represent collections of elements. Sometimes the problem is to find in a list either
elements or sublists that satisfy certain relationships. The programmer can either code
functions to compute these elements or express the relationships using variables for these
elements and let narrowing compute the elements by instantiating the variables. Generally,
the latter leads to simpler and more declarative programs.

For example, consider a program that plays the game of poker. A hand is represented by
a list of 5 cards. Suppose that the problem is to find whether 4 out of the 5 cards have the
same rank, i.e., the hand is a four-of-a-kind. A narrowing-based solution removes one card
from the hand so that the remaining 4 cards have the same rank. The following function
takes a hand and returns a Maybe type. If the hand is a four-of-a-kind, the function returns
just the rank of the four cards, otherwise it returns nothing.
[Browse Program][Download
Program]:

45

isFour (x++[_]++z) | map rank (x++z) == [r,r,r,r] = Just r where r free
isFour ’default_ = Nothing

The card removed from the hand is represented by the anonymous variable in the functional
pattern. This card is non-deterministically selected. The remaining cards are represented by
x and z. Additionally, the condition of the first rule imposes that all the cards in x and z have
the same rank, r. The rank, too, is non-deterministically selected by solving the equation
“map rank (x++z) == [r,r,r,r]”. If the condition succeeds, there is obviously a unique
value for all these variables. If the first rule cannot be applied, it must be that there are no
four cards of the same rank in the hand. The default rule reports this condition

The advantage of the narrowing-based approach over more conventional approaches is
that no instructions need to be coded both to isolate the card that does not contribute to
the four-of-a-kind nor to find the rank of the four-of-a-kind when it exists.

The above example is typical of situations in which a collection contains elements that
must satisfy a certain conditions. Since lists are implicitly ordered, conditions involving the
position of elements in a collection can also be conveniently expressed using narrowing.

Exercise 10 Similar to the example just discussed, code a function that tells whether a hand
in a game of poker is a full house. Hint:
[Browse Cards.curry][Download Cards.curry]
defines suits, ranks, etc. [Browse Answer][Download Answer].

4.3 Trees

We discuss two common variants of trees and show some typical functions of each variant.

4.3.1 Binary Search Trees

A binary tree is either of the following: a singleton value called empty (also null or leaf ) or a
pair, called a branch, consisting of two binary trees called the left and the right child. Most
often, a branch is a triple rather than a pair which in addition to the children also stores a
value of some generic set. This value is called the root or decoration of the tree.

A (decorated) binary tree is declared in Curry as:

data BinTree a = Leaf | Branch a (BinTree a) (BinTree a)

where BinTree is a type constructor and a is its parameter and stands for the type of the
decorations. A popular variant of binary trees is called a binary search tree. The set of
decorations is totally ordered and the decoration of a non-empty binary search tree is greater
than all the decorations in the left child and smaller than all the decorations in the right
child. This condition prevents repeated decorations in a binary search tree. The following
function inserts a value in a binary search tree in such a way that the result is again a binary
search tree [Browse Program][Download Program]:

insert x Leaf = Branch x Leaf Leaf
insert x (Branch d l r)

| x < d = Branch d (insert x l) r

46

| x > d = Branch d l (insert x
| otherwise = Branch d l r

r)

An in-order traversal of any binary search tree produces the sorted list of the decorations of
the tree.

inorder Leaf = []
inorder (Branch d l r) = inorder l ++ [d] ++ inorder r

Exercise 11 Sort a list without repeated values by constructing a binary search tree from
the list and then traversing the tree [Browse Answer][Download Answer].

4.3.2 Trie Trees

An ordered tree is a pair in which the first component is an element of a set, called the set of
decorations, and the second component is a sequence of ordered trees.

An ordered tree is declared in Curry as:

data Tree a = Tree a [Tree a]

where a is a parameter that stands for the type of the decorations and the identifier “Tree” is
overloaded to denote both a type constructor (1st and 3rd occurrences) and a data constructor
(2nd occurrence).

A trie is a tree that stores a mapping from keys, typically strings, to values and is
characterized by sharing key prefixes. We present a simple variant where only keys are
stored. This variant is useful to efficiently represent a dictionary and tell whether a string is
in the dictionary. For example, a trie storing the strings “car”, “care” and “carton” stores
the letter ‘c’, ‘a’, and ‘r’, only once as shown below. The distinguished symbol ‘•’ terminates
a string.

c
a
r
• e t
• o
n
•

We declare the type of a trie as follows:

type Trie = [Tree Char]

The following function inserts a string in a trie sharing whatever prefix of the string might
already be present in the trie. The distinguished symbol that terminates a string is a period.
[Browse Program][Download Program]

insert :: String -> Trie -> Trie
insert []
insert (w:ws) [] = [Tree w (insert ws [])]

= (Tree ’.’ [] : t)

t

47

insert (w:ws) (Tree c cs : ts)

| ord w < ord c = insert (w:ws) [] ++ (Tree c cs : ts)
| ord w > ord c = Tree c cs : insert (w:ws) ts
| otherwise

= Tree c (insert ws cs) : ts

Exercise 12 Code functions to build a trie from a list of words and to print all the words
in the trie [Browse Answer][Download Answer].

Exercise 13 Code a function that takes a word and a trie and tells whether or not the word
is in the trie [Browse Answer][Download Answer].

48

Chapter 5

Managing Curry Packages

There are many libraries and tools for Curry that are not distributed with an available Curry
system but can be accessed via the Curry package system. Currently, more than one hundred
packages are available. Some of them contain small libraries, others contain quite complex
tools, like the Curry preprocessor. The Curry Package Manager (CPM), which is part of
the Curry systems PAKCS and KiCS2, eases the access and use of these packages. In the
following, the basic use of CPM is explained. A detailed description of all features of CPM
can be found in its user manual.

The executable of the Curry Package Manager is named cypm and located in the bin

directory of PAKCS or KiCS2. When you use CPM for the first time, execute

> cypm update

to download a local copy of the index of all available packages. A list of all packages in this
index can be shown by the list command:

> cypm list
Name
----
abstract -curry
abstract -haskell Libraries to represent Haskell programs in Curry
A tool to add missing type signatures in a Curry
addtypes
program

Synopsis
--------

Libraries to deal with AbstractCurry programs

Version
-------

3.0.0
3.0.0
3.0.0

...

The command

> cypm info PACKAGE

can be used to show more information about the package with name PACKAGE.

5.1 Importing Existing Packages

To implement a larger application with Curry, one probably needs many libraries from other
packages. In this case, one should write the application as a Curry package so that all required
dependencies can be specified so that CPM can manage them. This is explained in more detail

49

in Section 5.3. If one wants to execute a smaller Curry program which uses a library from
some Curry package, then one can use CPM’s add command to add this package as a global
dependency and download and install it globally (i.e., in your user-home environment). For
instance, the package pflp supports probabilistic functional logic programming [9]. It can
be installed as a global dependency by the command

> cypm add pflp

The command

> cypm info pflp --all

shows all information about this package. In particular, one can see that the module PFLP
is exported by this package. Thus, one can use this module in a program using probabilistic
functional logic programming by adding the line

import PFLP

in the header of the program. When this program is loaded with PAKCS, the load path is
set in such a way so that the module PFLP from package pflp can be imported.

Note that this method to use packages should be used only for small programs or to
try some features of a specific package. Actually, each version of each Curry system has its
own global package cache.1 For larger applications, one should install the required packages
locally (which is described in Section 5.3 below).

5.2 Installing Tools

Many tools for Curry are available as packages. Actually, more than thirty tools are available
as packages, e.g., to analyze, test, or verify Curry programs, generate documentation, web
frameworks, etc. Such packages provide an “executable” (its name is shown by CPM’s info
command). In order to install a tool provided by PACKAGE, one can use the command

> cypm install PACKAGE

This command downloads the package into some internal directory ($HOME/.cpm/apps_...),
compiles the tool, and installs the binary of the tool provided by the package in
$HOME/.cpm/bin. Hence it is recommended to add this directory to your path.

For instance, the most recent version of CPM can be installed by the commands

> cypm update
...
> cypm install cpm
... Package ’cpm-xxx’ checked out ...
...
INFO

Installing executable ’cypm’ into ’/home/joe/.cpm/bin’

1Use the command cypm config and look at HOME_PACKAGE_PATH to see the directory of this global cache.

If it is no longer needed or should be initialized, one can simple delete this directory.

50

Now, the binary cypm of the most recent CPM version can be used if $HOME/.cpm/bin is in
your path (before the bin directory of the Curry system!).

5.3 Developing Applications and Packages

If one wants to implement an application in Curry which uses other Curry packages, one
should create a package for this application in order to specify all dependencies so that they
can be managed by CPM. The easiest way to create a new package is to use CPM’s new
command with the name of the new package:

> cypm new myproject

This creates a new directory myproject in which the application can be developed. The
generated file structure is as follows:

myproject
|-- LICENSE
|-- package.json
|-- README.md
|-- src

|-- Main.curry

This represents the minimal structure of a reasonable package (so that it could later be
published). The file README.md should contain a description of the package in plain text or
markdown syntax. The LICENSE file is BSD-3 but could be changed. The source code of
the package must be stored in directory src and might of consist of an arbitrary number of
modules.

The file package.json is the most important one for managing packages. It is a JSON
file containing the metadata of the package, like its name, version, author, synopsis, etc. The
detailed description of all possible metadata fields can be found in CPM’s user manual. One
has to modify this file according to the requirements of the new application. In particular,
one has to specify dependencies on other packages by modifying the field dependencies in
the package.json file,2 e.g.:

{

...,
"dependencies": {

"base": ">= 3.0.0, < 4.0.0",
"json": "~> 3.0.0"

}

}

After modifying the metadata, one can run

> cypm install

2One could also use the command “cypm add -d PACKAGE” to add new dependencies in this file.

51

(inside the package directory myproject) to resolve, download, and install all dependencies
of the current package. Then one can invoke PAKCS and use the modules of all specified
packages.

When the development of the application is completed, one can specify the name of the
main module and the executable to be generated in the file package.json as field executable:

{

}

...,
"executable": {

"name": "myexec",
"main": "Start"

}

The name of the executable must be defined (with key name) whereas the name of the main
module (key main) is optional (if it is missing, the name Main is taken). The main module
must export a function

main :: IO ()

which starts the application. If a package contains an executable specification, the command

> cypm install

also compiles the main module and installs the executable in the default directory
$HOME/.cpm/bin (see Section 5.2).

52

Part III

Design Patterns

53

Chapter 6

Design Patterns

6.1 Overview

A design pattern is a proven solution to a recurring problem in software design and devel-
opment. A typical pattern is not reusable code, as a library function would be, but consists
of problems, motivations, and design decisions related to the elements of a software arti-
fact. Many functional logic design patterns are centered on the characteristic features of the
paradigm, non-determinism and logic variables.

Patterns originated for object-oriented programming languages and became an important
discipline in computer science after [11]. Design patterns for functional logic programming
were introduced and further developed in [5, 7]. We present a pattern using tags, typically a
one-line description of some key element of a problem or its solution. In this tutorial, we use
only four simple tags: name, intent, solution, and structure with self-explaining meaning.

6.1.1 Deep selection

Deep selection
pattern matching at arbitrary depth in recursive types

Name
Intent
Applicability select an element with given properties in a structure
Structure

combine a type generator with a functional pattern

Recursively defined types, such as lists and trees, have components at arbitrary depths that
cannot be selected by pattern matching because pattern matching selects components only
at predetermined positions. For recursively defined types, the selection of some element with
a given property in a data structure typically requires code for the traversal of the structure
which is intertwined with the code for using the element. The combination of functional
patterns with type generators allows us to select elements arbitrarily nested in a structure
in a pattern matching-like fashion without explicit traversal of the structure and mingling of
different functionalities of a problem.

We show the application of this pattern in one example. Consider a simple type for

representing arithmetic expressions:

data Exp = Lit Int

| Var [Char]

54

| Add Exp Exp
| Mul Exp Exp

For example, the expression x + 1 is encoded as e = Add (Var "x") (Lit 1). Suppose
that we want to match an expression with some property, e.g., the expression is a variable,
regardless of whether it occurs. First, we define a function, withSub, that takes an expression
t and non-deterministically generates some expression with t as subexpression.

withSub exp = exp

? op (withSub exp) unknown
? op unknown (withSub exp)

where op = Add ? Mul

For example, if t = Var "x", then withSub t evaluates, among other possibilities, to an
expression matching the expression e discussed earlier. Thus, using functional patterns,
Sect. 3.5.5, we can pattern match a subexpression t anywhere in an expression e.

To see this in action, consider the function varOf defined below. This function takes an
expression e and returns the identifier of a variable occurring anywhere in e. With ordinary
pattern matching, only a variable at a fixed position, e.g., the root or the left argument of
an expression, can be matched. With withSub we match any variable anywhere:

varOf :: Exp -> String
varOf (withSub (Var v)) = v

For example, the set of the identifiers of all the variables of occurring in an expression e is
simply obtained with the set function of varOf, i.e., varOfS e [Browse Program][Download
Program].

6.1.2 Constrained Constructor

Constrained Constructor
prevent invoking a constructor that might create invalid data

Name
Intent
Applicability a type is too general for a problem
Structure

define a function that either invokes a constructor or fails

The signature of a functional logic program is partitioned into defined operations and data
constructors. They differ in that operations manipulate data by means of rewrite rules,
whereas constructors create data and have no associated rewrite rules. Therefore, a con-
structor symbol cannot perform any checks on the arguments to which it is applied. If a
constructor is invoked with arguments of the correct types, but inappropriate values, concep-
tually invalid data is created. We use an example to clarify this point.

The Missionaries and Cannibals puzzle is stated as follows. Three missionaries and three
cannibals want to cross a river with a boat that holds up to two people. Furthermore, the
missionaries, if any, on either bank of the river cannot be outnumbered by the cannibals
(otherwise, as the intuition hints, they would be eaten by the cannibals).

A state of this puzzle is represented by the number of missionaries and cannibals and the
presence of the boat on an arbitrarily chosen bank of the river, by convention the initial one:

55

data State = State Int Int Bool

For example, with suitable conventions, (State 3 3 True) represents the initial state. The
simplicity of this representation has the drawback that invalid states, e.g., those with more
than 6 people, can be created as well. Unless complex and possibly inefficient types for the
state are defined, it is not possible to avoid the creation of invalid states using constructors
alone.

The Constrained Constructor pattern avoids the creation of invalid states. The program-

mer invokes the constructor indirectly through the following function:

makeState m c b | valid && safe = State m c b

where valid = 0<=m && m<=3 \boolAnd 0<=c && c<=3

safe

= m==3 || m==0 || m==c

Function makeState invokes the constructor only after checking that only states that are
consistent with the physical conditions of the puzzle and are safe for the missionaries will
be created. For example, (State 2 1 -) is not safe since on one bank of the river the
cannibals outnumber the missionaries and therefore should not be created.
In fact, the
call makeState 2 1 fails because the rule’s condition is not satisfied.
In a suitable non-
deterministic program, this failure can be simply and silently ignored.

Operation makeState eases the definition of an operation, say move, to move people and

boat across the river:

move (State m c True)

= makeState (m-2) c False
? makeState (m-1) c False
? makeState m (c-2) False
? ...

-- move 2 missionaries
-- move 1 missionary
-- move 2 cannibals

since “undesirable” states are never produced [Browse Program][Download Program].

6.1.3 Non-determinism introduction and elimination

Non-determinism introduction and elimination
use different algorithms for the same problem

Name
Intent
Applicability some algorithm is too slow or it may be incorrect
Structure

either replace non-deterministic code with deterministic one or vice versa

Specifications are often non-deterministic because in many cases non-determinism defines
the desired results of a computation more easily than by other means. We have seen this
practice in several previous examples. Thus, it is not unusual for programmers to initially
code a non-deterministic prototype even for deterministic problems because this approach
produces correct programs quickly.

In some cases, a non-deterministic program is not efficient enough to solve a problem of
interesting size. Reducing the non-determinism of the program, e.g., by taking advantage
of domain knowledge, may improve the efficiency of execution. Below, is an example. The
“blocks world ” [24] consists of 3 possibly empty piles, labeled p, q and r, of unique blocks

56

labeled A, B, C, etc. “Start” and “Final ” below are two examples of blocks worlds from
[10].

A blocks world “problem” consists of two worlds, like Start and Final above. Its solution
consists in the moves that produce the second world from the first one. A “move” transfers
the block on top of a pile to the top of another pile. No other blocks are affected by the
move. Below is an example of a solution from Start to Final.

In our prototype, blocks are encoded as an enumerated type. A world is three stacks of
blocks. A solution is a sequence of worlds. A problem is a pair of words.

data Block = A | B | C | D | E deriving Eq
type Stack = [Block]
type World = (Stack , Stack , Stack)
type Trace = [World]
data Problem = Problem World World

simpleProblem , difficultProblem :: Problem
simpleProblem = Problem ([A,B],[],[]) ([],[A,B],[])
difficultProblem = Problem ([A,B,C,D,E],[],[]) ([],[C,B,A,D,E],[])

We define two functions to solve a blocks world problem. Function move moves the block
at the top of a pile to the top of another different pile. Both the origin and the destination
pile of a move are non-deterministically selected. Function extend takes a sequence of blocks
world states, that we call a trace, that when reversed satisfies the following invariant: (1) the
first block is the start state, (2) any other block is obtained from the previous one by a move,
and (3) no element, with the possible exception of the last one, is repeated.

Function extend performs the following tests and corresponding actions on the last ele-
ment, t, of the trace (the first element actually, since the trace is reversed): (1) if t is the final
world, the trace is a solution, (2) if t is repeated in the trace, the computation is aborted,
otherwise (3) the trace is extended with a move from t:

move :: World -> World
move (x:xs, ys, zs) = (xs, x:ys, zs) ? (xs, ys, x:zs) -- p -> q/r
move (xs, y:ys, zs) = (y:xs, ys, zs) ? (xs, ys, y:zs) -- q -> p/r

57

move (xs, ys, z:zs) = (z:xs, ys, zs) ? (xs, z:ys, zs) -- r -> p/q

extend :: Trace -> World -> Trace
extend trace@(t:ts) goal

| t == goal
| t ‘elem‘ ts
| otherwise

= reverse trace
= failed
= extend (move t : trace) goal

main :: Problem -> Trace
main = extend [s] f where Problem s f = simpleProblem

The PAKCS interpreter produces 40 solutions of simpleProblem in which the number of
moves ranges from 3 to 10, in a fraction of a second. However, it does not produce any
solution of difficultProblem in over an hour. We are guessing that the reason is that the
non-determinism of move is too “unfocused.” [Browse Program][Download Program].

We reduce the non-determinism of the previous program using two strategies. We favor
moves that put a block in its final place and by we avoid moves that take a block away
from its final place. Function moveToGoal is quite similar to function move of the previous
program, but it moves a block only if the block ends up into its final place. If such a move
is not available, the move is computed by function noMoveFromGoal. This function is again
quite similar to move, but a block that is already in its final place is never moved.

Observe that noMoveFromGoal would fail if called on the final state of a blocks world
problem. An invariant of this and the previous program is that no move is attempted on any
final state.

moveToGoal :: World -> World -> World
moveToGoal (x:xs, ys, zs) (_,_++x:ys, *) = (xs, x:ys, zs) -- p -> q
moveToGoal (x:xs, ys, zs) (*, _, *++x:zs) = (xs, ys, x:zs) -- p -> r
moveToGoal (xs, y:ys, zs) (*++y:xs,_, *) = (y:xs, ys, zs) -- q -> p
moveToGoal (xs, y:ys, zs) (*, _, *++y:zs) = (xs, ys, y:zs) -- q -> r
moveToGoal (xs, ys, z:zs) (*++z:xs,_, *) = (z:xs, ys, zs) -- r -> q
moveToGoal (xs, ys, z:zs) (*, _++z:ys,_) = (xs, z:ys, zs) -- r -> p
moveToGoal ’default w g = noMoveFromGoal w g

noMoveFromGoal :: World -> World -> World
noMoveFromGoal (x:xs, ys, zs) (g, _,_)

| not (isSuffixOf (x:xs) g) = (xs, x:ys, zs) ? (xs, ys, x:zs)

noMoveFromGoal (xs, y:ys, zs) (_, g,_)

| not (isSuffixOf (y:ys) g) = (y:xs, ys, zs) ? (xs, ys, y:zs)

noMoveFromGoal (xs, ys, z:zs) (_,_, g)

| not (isSuffixOf (z:zs) g) = (z:xs, ys, zs) ? (xs, z:ys, zs)

extend :: Trace -> World -> Trace
extend trace@(t:ts) goal

| t == goal
| t ‘elem‘ ts
| otherwise

= reverse trace
= failed
= extend (moveToGoal t goal : trace) goal

58

main :: Trace
main = selectValue (set2 extend [s] f)

where Problem s f= difficultProblem

in a fraction of a second.

The PAKCS interpreter produces 6 solutions of simpleProblem in which the number of
moves ranges from 3 to 7,
It also produces a solution of
difficultProblem in a few seconds, but this solution is 170 moves long. There exists a
solution of this problem which is only 12 moves long. [Browse Program][Download Program].
The previous example and discussion shows that reducing the non-determinism of a pro-
gram may increase its efficiency. Often, it also increases its complexity. This patter comes
In some situations, e.g., if a program is producing unexpected results, it
in a dual form.
may be useful to increase the program non-determinism. This change will likely decrease the
program efficiency, but increase its simplicity. With a simpler program it may be easier to
assess or verify whether a result of a computation is expected.

59

Part IV

Applications & Libraries

60

Chapter 7

Web Programming

7.1 Overview

Due to the ubiquity of the world wide web (WWW or “web” for short), many applications
offer web-based interfaces in order to support convenient access to them. This chapter de-
scribes how one can implement web-based interfaces in Curry. We will see that the functional
and logic programming features of Curry are quite useful in providing a high-level program-
ming interface for such applications so that Curry can also be used as a language for “web
scripting,” i.e., for writing web interfaces in a concise manner.

This chapter requires some basic knowledge about the structure of HTML, the “Hypertext
Markup Language” for describing the general form and layout of documents presented by
web browsers. Up-to-date information about HTML is available from the World Wide Web
Consortium (W3C).

The approach to web programming described in this chapter is based on the package
html2.1 It is based on the library HTML contained in earlier versions of PAKCS described in
[16]. Ideas and details about this newer library for web programming can also be found in
[19].

7.2 Representing HTML Documents in Curry

HTML is a language for specifying the structure and layout of web documents. We also say
“HTML document” for a text written in the syntax of HTML. Basically, an HTML document
consists of the following elements:

• elementary text

• tags with other HTML elements as contents, like headers (h1, h2,. . . ), lists (ul, ol,. . . ),

etc.

• tags without contents, like line breaks (br), images (img), etc.

The plain syntax of HTML, which is interpreted by a web browser when displaying HTML
documents, requires tags be enclosed in pointed brackets (<· · ·>). The contents of a tag is

1<https://cpm.curry-lang.org/pkgs/html2.html>

61

written between an opening and a closing tag where the closing tag has the same name as
the opening tag but is preceded by a slash. Tags can also contain attributes to attach specific
information to tags. If present, attributes are written in the form “name=value” after the
opening tag’s name and before its right bracket.

For instance, “i” and “b” are tags to specify that their contents should be set using an

italic and bold font, respectively. Thus, the HTML text

This is the <i>italic </i> and the <b>bold </b> font.

would be displayed by a web browser as this:

This is the italic and the bold font.

Tags without contents have no closing tag. An example is the tag for including images in
web documents, where the attribute “src” specifies the file containing the picture and “alt”
specifies a text to be displayed as an alternative to the picture:

<img src="picture.jpg" alt="Picture">

A program with a web interface must generate HTML documents that are displayed in the
client’s browser. In principle, we can do this in Curry by printing the text of the HTML
document directly, as in:

writeHTML = do

putStrLn "This is the "
putStrLn "<i>italic </i> and the "
putStrLn "<b>bold </b> font."

If the program becomes more complex and generates the HTML text by various functions,
there is the risk that the generated HTML text is syntactically not correct. For instance,
the tags with contents must be properly nested, i.e., the following text is not valid in HTML
(although browser can display it but may become confused by illegal HTML documents):

This is <b>bold and also <i>italic </b></i>.

To avoid such problems in applications programs, one can introduce an abstraction layer
where HTML documents are modeled as terms of a specific datatype. Thus, a web application
program generates such abstract HTML documents instead of the concrete HTML text.
This has the advantage that ill-formed web documents correspond to ill-formed expressions
in Curry which would immediately be rejected by the compiler. The actual printing of
the concrete HTML text is done by a wrapper function that translates an abstract HTML
document into a string.

For representing abstract HTML documents in Curry, we define the following datatype

of basic HTML expressions:

data BaseHtml = BaseText String

| BaseStruct String Attrs [BaseHtml]

type Attrs = [(String ,String)

62

The constructor BaseText corresponds to elementary text in an HTML document, whereas
the constructor BaseStruct correspond to HTML elements with a tag and attributes. Thus,
the parameter of type “Attrs”, which is a type synonym for “[(String,String)]”, is the
list of attributes, i.e., name/value pairs.

For instance, our first HTML document above is represented with this datatype as the

following list of HTML expressions:

[BaseText "This is the ",

BaseStruct "i" [] [BaseText "italic"],
BaseText " and the ",
BaseStruct "b" [] [BaseText "bold"],
BaseText " font."]

Similarly, the image tag above is represented as follows:

BaseStruct "img" [("src","picture.jpg"),("alt","Picture")] []

Obviously, we can specify any HTML document in this form but this becomes very tedious for
a programmer. To avoid this, we define several functions as useful abbreviations of common
HTML tags:

hexps
hexps

= BaseStruct "h1" [] hexps
= BaseStruct "h2" [] hexps

h1
h2
...
bold
hexps
italic hexps
hrule
breakline
image src alt = BaseStruct "img" [("src",src),("alt",alt)] [] -- image
...

= BaseStruct "b"
= BaseStruct "i"
= BaseStruct "hr" [] []
= BaseStruct "br" [] []

-- bold font
-- italic font
-- horizontal rule
-- line break

-- header 1
-- header 2

[] hexps
[] hexps

Characters that have a special meaning in HTML, like “<”, “>”, “&”, “"”, should be quoted
in elementary HTML texts to avoid ill-formed HTML documents. Thus, we define a function
“htxt” for writing strings as elementary HTML texts where the special characters are quoted
by the function “htmlQuote”:

htxt
htxt s = BaseText (htmlQuote s)

:: String -> BaseHtml

htmlQuote :: String -> String
htmlQuote [] = []
htmlQuote (c:cs) | c==’<’
| c==’>’
| c==’&’
| c==’"’
| otherwise = c : htmlQuote cs

++ htmlQuote cs
= "&lt;"
++ htmlQuote cs
= "&gt;"
= "&amp;"
++ htmlQuote cs
= "&quot;" ++ htmlQuote cs

Now we can represent our first HTML document above as follows:

[htxt "This is the ", italic [htxt "italic"],

63

htxt " and the ", bold [htxt "bold"], htxt " font."]

All the definitions we have introduced so far are contained in the library “HTML.Base” of the
Curry package html2. In order to use this library, one has to add it as a dependency by the
CPM command (see Section 5.1)

> cypm add html2

and add the import declaration

import HTML.Base

in the header of the Curry program. The library HTML.Base also defines a wrapper func-
tion showBaseHtmls to generate the concrete textual representation of an abstract HTML
expression. For instance, the value of

showBaseHtmls [h1 [htxt "Hello World"], italic [htxt "Hello"], htxt " world!"]

is the string

<h1>

Hello World

</h1>
<i>Hello </i>
world!

In order to generate a complete HTML page with header information, the library HTML.Base
contains the following definition of HTML pages:

data HtmlPage = HtmlPage String [PageParam] [BaseHtml]

The first argument is the title of the page and the third argument is the contents of the page.
The second argument is a list of optional parameters, like encoding scheme, style sheets
etc. Since they are seldom used in standard pages, the library HTML.Base contains also the
following function to specify HTML pages without optional parameters:

page :: String -> [BaseHtml] -> Htmlpage
page title hexps = HtmlPage title [] hexps

Furthermore, the library HTML.Base defines a wrapper function

showHtmlPage :: HtmlPage -> String

to generate the concrete textual representation of a complete HTML page with head and
body parts. For instance, the value of

showHtmlPage (page "Hello" [h1 [htxt "Hello World"],

italic [htxt "Hello"], htxt " world!"])

is the string

<!DOCTYPE html>

64

<html lang="en">

<head>

<title >
Hello
</title >
<meta http-equiv="Content -Type" content="text/html; charset=utf-8"/>

</head>

<body>
<h1>

Hello World

</h1>
<i>Hello </i>
world!

</body>

</html>

We can use these functions to write Curry programs that generate HTML documents. For
instance, consider the generation of an HTML document that contains a list of all multipli-
cations of digits, i.e., a line in this document should look as follows:

The product of 7 and 6 is 42

First, we define a list of all triples containing such multiplications by the use of list compre-
hensions (compare Section 4.2.4):

multiplications = [ (x,y,x*y) | x <- [1..10], y <- [1..x] ]

Each triple is translated into a list of HTML expressions specifying the layout of a line:

mult2html :: (Int,Int,Int) -> [BaseHtml]
mult2html (x,y,z) =

[htxt "The product of ", bold [htxt (show x)],

htxt " and ", bold [htxt (show y)],
htxt " is ", bold [htxt (show z)], breakline]

Now can use these definitions to define the complete HTML document (the prelude func-
tion concatMap applies a function that maps elements to lists to each element of a list and
concatenates the result into a single list) [Browse Program][Download Program]:

htmlMultiplications =

[h1 [htxt "Multiplication of Digits"]] ++ concatMap mult2html multiplications

For instance, we can use the latter function to store the HTML page in a file named
“multtable.html” by evaluating the expression:

writeFile "multtable.html"

(showHtmlPage (page "Multiplication" htmlMultiplications))

Exercise 14 Define a function boldItalic to translate text files into HTML documents.
The function has two arguments: the name of the input text file and the name of the file

65

where the HTML page should be stored. The HTML document should have the same line
structure as the input but the lines should be formatted in bold and italic, i.e, first line in
bold, second in italic, third in bold, fourth in italic, etc. Hint: use the prelude function lines
to split a string into a list of lines. [Browse Answer][Download Answer]

7.3 Server-Side Web Scripts

We have seen so far how to write programs that create static HTML documents. Such
programs could be useful to transform existing data into a static set of HTML pages. In
contrast, the contents of dynamic web pages is computed at the time they are requested by a
client (usually, a web browser). Technically, the creation of dynamic web pages is supported
by web servers by so-called CGI (Common Gateway Interface) programs. If a web server is
asked for a document with the suffix “.cgi” instead of “.html” (the exact behavior is defined
in the configuration of the web server; see also Section 7.4 below), then the server does not
return the contents of the corresponding file but executes the file (the “CGI program”) and
returns the standard output produced by this program. Thus, a CGI program must write an
HTML document on its standard output. The CGI program can also take user input in an
HTML form into account; this is described in Section 7.5.

Since the CGI program is some executable stored on the web server, it can be written in
any programming language. Thus, we can also write a Curry program which generates prints
an HTML document when it is executed. As already discussed above, writing raw HTML
documents could be error prone so that it is better create HTML data structures. Therefore,
the library HTML.Base supports the creation of dynamic web pages by compiling a Curry
program with a main operation of type

main :: IO HtmlPage

into an executable which prints the corresponding HTML document (the actual application
of this compiler is described in the next section). Since this is an I/O operation, the contents
of the generated HTML documents could also depend on the environment of the web server,
e.g., information stored in the file system or databases.

As a first example, we want to generate a CGI program that computes the above multi-
plications of digits on demand. For this purpose, we define the following operation multPage
(the right-associate operator “$” is defined with a low precedence in the prelude and denotes
function application; it is often used to avoid brackets, e.g., the expression “f $ g $ 3+4” is
equivalent to “f (g (3+4))”) [Browse Program][Download Program]:

multPage :: IO HtmlPage
multPage =

return $ headerPage "Multiplication of Digits" htmlMultiplications

Here we use the operation headerPage which is similar to page but adds the page title as a
header line:

headerPage :: String -> [BaseHtml] -> HtmlPage
headerPage title hexps = page title (h1 [htxt title] : hexps)

66

To see an application of accessing the server environment, we define a form that shows the
current date and time of the server (the IO action getLocalTime, defined in the standard
library Data.Time contained in Curry package time, returns the local date and time in
some internal representation which can be converted into a readable string by the function
calendarTimeToString) [Browse Program][Download Program]:

timePage :: IO HtmlPage
timePage = do

time <- getLocalTime
return $ page "Current Server Time"

[h1 [htxt $ "Current date and time: " ++ calendarTimeToString time]]

The installation of such web programs on a web server is described in the following section.

7.4

Installing Web Programs

Although the installation of CGI programs highly depends on the web server, this section
provides some hints so that you can execute the programs described in this chapter on your
web server. Clearly, your web server must be configured to enable the execution of CGI
programs. Fortunately, most web servers support CGI programs, though they will likely
require special configuring by the system administrator. A web server can be configured
to interpret any file ending with “.cgi” and execute it when requested, or it can be also
configured to execute only CGI programs stored in a particular directory, e.g., “cgi-bin”.
Ask your system administrator for the instructions on CGI execution that are specific to your
system.

In order to execute any web program written with the library HTML.Base, the Curry-to-
CGI compiler curry2cgi is required. It can easily be installed by executing the following
CPM command (see also Section 5.2) on the web server (where PAKCS should be already
installed):

> cypm install html2

Now the installation of a CGI program is quite simple. Assume you have written a Curry
program “myscript.curry” containing a definition of a form function “main” of type
“IO HtmlPage” (see previous section). Then you can compile it into an executable CGI
program by the command

> curry2cgi myscript

This creates (after successful compilation) an executable program “myscript.cgi”. If your
main form function has a name different from the default main, you can specify it with option
“-m”. For instance, the command

> curry2cgi -m myForm myscript

creates a CGI program with form function “myForm”. In general, the parameter following
“-m” can be any Curry expression of type “IO HtmlPage”.2

2Since this expression is executed as the main program, all symbols of this expression must be exported

from the Curry program.

67

Similarly, the option “-o” can be used to install the CGI program under a different name.

For instance, the command

> curry2cgi -o ~/cgi-bin/myscript.cgi -m myForm myscript

installs the executable CGI program in the file “~/cgi-bin/myscript.cgi”. Depending on
the configuration of your web server, you can execute the CGI program by requesting the
document with a URL like “<http://your.server.name/cgi-bin/myscript.cgi”> in your
web browser.

7.5 Forms with User Input

In many applications, dynamic web pages should not only depend on the environment of the
web server but also on the input provided by the client (i.e., the user contacting the server via
its browser). In principle, this is possible since HTML includes also elements for user input
(text fields, buttons, etc) which is sent to the web server when requesting a document. How
can we access the user input in a CGI program running on the server? The whole purpose of
the Common Gateway Interface is to define a method to send information to the server and
from the web browser, hence the name Common Gateway. Fortunately, it is not necessary
to know all the details of CGI since the library HTML.Base defines an abstraction layer to
provide a comfortable access to user inputs. This abstraction layer exploits the functional
and logic features of Curry and will be explained in this section.

Input elements are contained in HTML forms that are embedded in HTML pages. If a
form is submitted to the web server, the contents of the input elements, e.g., the text typed
into text fields, is transmitted to the web server. To refer to the contents of input elements,
there is a type

data HtmlRef = ...

This type is abstract and the library HTML.Base does not export any constructor for this
type. We will see later how to use such abstract HTML references.

The library HTML.Base uses such references in the definitions of the various input elements
occurring in HTML forms. For instance, the element “textField” defines an HTML input
element where the user can type a line of text:

textField :: HtmlRef -> String -> HtmlExp

The first argument is the reference to this input field and the second argument is the initial
contents shown in the field. It should be noted that this input element has type HtmlExp
rather than BaseHtml. This distinction is useful to avoid errors with input fields. Since input
fields can only occur inside forms, forms contain data of type HtmlExp and are embedded in
HTML pages, i.e., data of type BaseHtml. Note that the abbreviations of common HTML
tags shown above (htxt, h1, h2, italic,. . .) are actually overloaded (via type classes) so that
they can be used as BaseHtml and also as HtmlExp data.

How can we use a textField if there are no constructors of type HtmlRef? The simple
and may be surprising answer is: by logic variables! For instance, a form containing a string
and an input field can be defined as follows:

68

Figure 7.1: A simple string reverse/duplication form

rdForm = [htxt "Enter a string: ", textField tref ""]

where tref free

A HtmlRef variable serves as a reference to the corresponding input field to access the user’s
input. Raw CGI requires concrete strings as references (attribute “name” of “input” tags)
which is error-prone (since typos in these strings lead to run-time errors). However, the
concrete strings are not important, and so the logic variables are sufficient. It is only im-
portant to use them when computing the answer to the client. For this purpose, the library
HTML.Base defines an HTML environment as a mapping from HTML references to strings:

type HtmlEnv = HtmlRef -> String

An HTML environment is used to collect the input of the user when computing the response.
The computation of the response is done by an HTML event handler that is attached to each
button for submitting a form to the web server. For this purpose, the library HTML.Base
defines the type of HTML event handlers as

type HtmlHandler = HtmlEnv -> IO HtmlPage

i.e., an event handler is called with the current HTML environment and yields an I/O action
that returns a new HTML page to be sent back to the client. Thus, the library HTML.Base
contains the following type definition for a button to submit forms:

button :: String -> HtmlHandler -> HtmlExp

The first argument is the text shown on the button and the second argument is the event
handler called when the user clicks this submit button.

The actual event handlers can simply be defined as local functions attached to forms so
that the HtmlRef variables are in scope and need not be passed. To see a simple example,
we show the specification of a form where the user can enter a string and choose between
two actions (reverse or duplicate the string) by two submit buttons (see Figure 7.1) [Browse
Program][Download Program]:

69

rdFormContents :: [HtmlExp]
rdFormContents =

[htxt "Enter a string: ", textField tref "", hrule ,

revhandler ,
button "Reverse string"
button "Duplicate string" duphandler]

where

tref free

revhandler env = return $ page "Answer"

[h1 [htxt $ "Reversed input: " ++ reverse (env tref)]]

duphandler env = return $ page "Answer"

[h1 [htxt $ "Duplicated input: " ++ env tref ++ env tref]]

Note the simplicity of retrieving values entered into the form: since the event handlers are
called with the appropriate environment containing these values (parameter “env”), they can
easily access these values by applying the environment to the appropriate HTML reference,
like “(env tref)”.

So far we have the definition of a form, but how can such forms be embedded in an HTML

page? Note that a form has two different purposes:

1. A form defines the layout and input fields shown to the user.

2. A form defines the reaction via handlers when it is submitted.

For this purpose, the library HTML.Base distinguishes between a form definition and its actual
use. For this purpose, forms must be defined as top-level entities (which will be compiled by
curry2cgi). For this purpose, there is a constructor simpleFormDef (other constructors are
shown later):

simpleFormDef :: [HtmlExp] -> HtmlFormDef ()

This operation wraps a form layout, possibly containing input elements and event handlers,
into a form definition (the type argument of HtmlFormDef will be discussed later). For
instance, we turn our form above into a form definition by

rdFormDef :: HtmlFormDef ()
rdFormDef = simpleFormDef rdFormContents

A defined form can be embedded into an HTML page by wrapping the form definition with
operation

formElem :: HtmlFormDef a -> BaseHtml

Hence, the following code defines an HTML page containing our form:

rdPage :: IO HtmlPage
rdPage = return $ page "String reverse/duplicate" [formElem rdFormDef]

By defining the form together with the various handlers in one top-level entity, forms are
more reliable compared to a separate definition of HTML structures and scripts to process

70

them. The advantage of distinguishing a form definition from its actual use is that we can
use a form in any HTML document, in particular, recursively in the answer computed by an
event handler. For instance, a form to compute the length of an input string and showing the
form again in the answer can be defined as follows [Browse Program][Download Program]:

lengthForm = simpleFormDef

[htxt "Enter a string: ", textField ref "", button "Length"

(\env -> return $ page "Answer"

[h1 [htxt $ "Length: " ++ show (length (env ref))],
hrule , formElem lengthForm])]

where ref free

main :: IO HtmlPage
main = return $ headerPage "String length" [formElem lengthForm]

7.6 Stateful Forms

The simple HTML forms presented so far are quite limited. Form definitions are top-level
entities so that their layout is fixed, i.e., they cannot show data from a possible usage context,
e.g., database entities or authentication data. In order to make forms more flexible, it should
be possible that forms access some state to be shown in the form. Such stateful forms need
only to read data, since the manipulation of data, e.g., updating a data base depending on
the user input, is usually performed by the event handlers (therefore, event handlers are of
type IO).

To support stateful forms, the library HTML.Base defines a monad FormReader with oper-
ations to read data (see below), i.e., the FormReader monad is a restriction of the IO monad
where only read operations are supported.3 Thus, a stateful form consists of a FormReader
action to read data of some type a and an operation which maps values of this type into an
HTML form. The library HTML.Base supports the definition of stateful forms by the form
constructor operation

formDef :: FormReader a -> (a -> [HtmlExp]) -> HtmlFormDef a

Therefore, an operation of type HtmlFormDef a specifies a form which reads some data of
type a and use this data to generate the actual HTML form.

In order to define a stateful form, we need an operation of type FormReader a. A difficulty
in web programming is the fact that HTTP is a stateless protocol, i.e., each web page can
be shown several times and there are no connections between different web pages to pass
some state from one page to another. This problem is solved in typical web applications by
a session concept where each user has its own session where session-local data can be stored,
like the login name of a user or the contents of a virtual shopping basket. A session concept

3The restriction to read operations is necessary since forms might be executed several times, e.g., to
construct the form layout, to start an event handler, or if the form has multiple occurrences in a web page.
Thus, a form should not change the environment. Changes are only performed by the activation of some event
handler.

71

can be implemented via cookies to identify the client in a session. To hide the details of
session handling, the package html2 contains the library HTML.Session which provides the
following operations (the type variable a denotes the type of session data):

getSessionData
putSessionData
removeSessionData :: (Read a, Show a) => SessionStore a -> IO ()

:: (Read a, Show a) => SessionStore a -> a -> FormReader a
:: (Read a, Show a) => SessionStore a -> a -> IO ()

The type variable a specifies the type of session data. The class constraints Read and Show
are required since the data is stored on the web server. “SessionStore a” is the type of
a top-level entity referring to some memory cell containing session information of type a.
getSessionData retrieves information of the current session (and returns the second ar-
gument if there is no information, e.g., in case of a new session), putSessionData stores
information in the current session, and removeSessionData removes such information. A
session store containing data of type a can be defined in a Curry program as a top-level
entity by using the constructor operation

sessionStore :: (Read a, Show a) => String -> SessionStore a

The argument is a unique name (consisting of letters and digits) for the session store in the
web application.4

In order to see an application of this concept, we implement a simple number guessing
game: the client has to guess a number known by the server (here: 42), and for each number
entered by the client the server responds whether this number is correct, smaller or larger
than the number to be guessed. If the guess is not right, the answer form contains an input
field where the client can enter the next guess. Moreover, the number of guesses should also
be counted and shown at the end. Hence, the session state contains the number of trials and
is defined as

trials :: SessionStore Int
trials = sessionStore "trials"

The form definition consists of an action that reads the current session data and the HTML
form for this data [Browse Program][Download Program]:

guessForm :: HtmlFormDef Int
guessForm = formDef (getSessionData trials 1) guessFormHtml

guessFormHtml :: Int -> [HtmlExp]
guessFormHtml t =

[htxt "Guess a number: ", textField nref "",

button "Check" guessHandler]

where

nref free

guessHandler env = do

4Session stores are implemented as persistent global entities, see Curry package global, which are stored

in the file system of the server.

72

Figure 7.2: A web questionnaire

let n = read (env nref)
if n==42

then do

removeSessionData trials
return $ headerPage ("Correct! " ++ show t ++ " guesses!") []

else do

putSessionData trials (t+1)
return $ headerPage ("Too " ++ if n<42 then "small!" else "large!")

[formElem guessForm ]

The form handler reads the user input from the HTML environment (one could add an
additional check whether the input is a number string) and compares it with the “secret”
number. If it is equal, the session data is removed before returning the answer, otherwise the
session data is updated so that the next form invocation gets the updated data.

7.7 Example: A Web Questionnaire

In many web applications, clients want to store or update information on the server, e.g.,
by putting orders for books, flight tickets, etc. In this section we show an example where a
client can change persistent data stored on the web server.

Consider the implementation of a web-based questionnaire which allows the clients to
vote on a particular topic. Figure 7.2 shows an example of such a questionnaire. The votes
are stored on the web server. The current votings are shown after a client submits a vote
(see Figure 7.3).

73

Figure 7.3: Answer to the web questionnaire

In order to provide an implementation that is easy to maintain, we define the main
question and the choices for the answers as constants in our program so that they can be
easily adapted to other questionnaires:

question :: String
question = "Who is your favorite actress?"

choices :: [String]
choices = ["Doris Day", "Jodie Foster", "Marilyn Monroe",

"Julia Roberts", "Sharon Stone", "Meryl Streep"]

The current votes are stored in a file on the web server. We define the name of this file as a
constant in our program:

voteFile :: String
voteFile = "votes.data"

For the sake of simplicity, this file is a simple text file. If there are n choices for voting, the
file has n lines where each line contains the textual representation of the number of votes for
the corresponding choice. Thus, the following operation reads the vote file and returns the
list of numbers in this file or, if the file does not exist, initializes the vote file and returns
zeros (the prelude function lines breaks a string into a list of lines, where lines are separated
by newline characters, and the opposite function unlines concatenates a list of strings into
lines).

readVoteFile :: IO [Int]

74

readVoteFile = do

existnumfile <- doesFileExist voteFile
if existnumfile

then do vfcont <- readFile voteFile

return (map read (lines vfcont))

else do let nums = take (length choices) (repeat 0)

writeFile voteFile (unlines (map show nums))
return nums

To update the vote file, we define overwriteVoteFile that writes a list of numbers into
the vote file. The numbers are written into a new file that is moved to the vote file in
order to avoid an overlapping between reading and writing the same file. doesFileExist,
removeFile, and renameFile are I/O operations defined in the library System.Directory
(from package directory) to check the existence of a file, delete a file, and rename a file,
respectively.

overwriteVoteFile :: [Int] -> IO ()
overwriteVoteFile nums = do

writeFile (voteFile ++ ".new") (unlines (map show nums))
removeFile voteFile
renameFile (voteFile ++ ".new") voteFile

When a client submits a vote, we have to increment the corresponding number in the vote
file. This can be easily done by reading the current votes and writing the votes that are
incremented by the auxiliary function incNth:

incNumberInFile :: Int -> IO ()
incNumberInFile voteindex = do

nums <- readVoteFile
overwriteVoteFile (incNth nums voteindex)

where

incNth []
incNth (x:xs) n | n==0

_

= []
= (x+1) : xs

| otherwise = x : incNth xs (n-1)

Now we have all auxiliary definitions that are necessary to define the web script. First,
we show the definition of the HTML page “evalPage” that shows the current votes (which
produces the result shown in Figure 7.3). The prelude function “zip” joins two lists into one
list of pairs of corresponding elements.

evalPage :: IO HtmlPage
evalPage = do

votes <- exclusiveIO (voteFile ++ ".lock") readVoteFile
return $ form "Evaluation"
[h1 [htxt "Current votes:"],
table (map (\(s,v) -> [[htxt s], [htxt $ show v]])

(zip choices votes))]

Note that we ensure the exclusive access to the vote file by the use of the operation

75

exclusiveIO.5 This is necessary since there is not much control on the access to web pages
by clients. In particular, the same CGI program might be executed in parallel if two clients
accessing them simultaneously. This can cause problems if both read and update the same
information. Thus, it is mandatory to ensure exlusive data access in web applications which
might change data. If the data is stored in files, it must be manually done, as above. If the
data is stored in databases, the database system ensures the exclusive access but one has to
take care on the definition of transations.

Now we can define our form that allows the user to submit a vote (see Figure 7.2). It
uses radio buttons as input elements. Radio buttons are lists of buttons where exactly one
button can be turned on. Thus, all buttons have the same HTML reference but different
values. When a form is submitted, the HTML environment maps the HTML reference to
the value of the selected radio button. A complete radio button suite consists always of
a main button (radioMain) which is initially on and some further buttons with the same
HTML reference as the main button (radioOthers) that are initially off. In our example, we
associate to each button the index of the corresponding choice as a value. The event handler
questHandler increments he appropriate vote number and returns the current votes by the
use of evalPage [Browse Program][Download Program]:

questForm :: HtmlFormDef ()
questForm = simpleFormDef $

[h1 [htxt question],

radioMain vref "0", htxt (head choices), breakline] ++
concatMap (\(i,s) -> [radioOther vref (show i), htxt s, breakline])

(zip [1..] (tail choices)) ++

[hrule , button "submit" questHandler]

where

vref free

questHandler env = do

exclusiveIO (voteFile ++ ".lock")

(incNumberInFile (read (env vref)))

evalPage

main :: IO HtmlPage
main = return $ page "Vote Form" [formElem questForm]

7.8 Finding Bugs

Since debugging of CGI programs can be quite tedious, here are some hints on how to debug
CGI programs.

If the execution of the CGI program produces some run-time error (e.g., access to a
non-existing files), the error message should be shown in the web page. Furthermore,
messages written to standard error output are collected in the log file of the web script.
For instance, if the web script is stored at location cgi-bin/myscript.cgi, the log file is

5The operation exclusiveIO is defined in the library System.IOExts contained in the package io-extra.

76

cgi-bin/myscript.cgi.log. Hence, if you want to put some debug output in your web
script, you should write it to standard error, e.g.,

hPutStrLn stderr "A log message"

(where hPutStrLn and stderr are defined in the standard library IO).

The use of logic variables as references to input elements in HTML forms ensures that
typos in the name of references can be detected by the compiler (e.g., resulting in an “unde-
clared identifier” error message), in contrast to traditional approaches to CGI programming
using plain strings as references. However, if we use the same logic variable for two different
input elements, this is not detected by the compiler (which is not worse than traditional
approaches where this is also not detected) but results in a run-time error that is not easy to
understand due to the implementation of the library HTML.Base in Curry. In this case, the
web script might fail with a message like “No value found”. Thus, you should check your
source program for these possible errors or add some debug output, as described above, to
your script.

7.9 Advanced Web Programming

This section discusses some further features which are useful for writing web applications in
Curry. URL parameters can be exploited to write generic web scripts. Cookies are useful to
store information about the client between different web scripts. Style sheets can be used to
modify and add new presentation styles for web documents.

7.9.1 URL Parameters

In some situations it is preferable to have generic web scripts that can be applied in vari-
ous situations described by parameters. For instance, if we want to write a web application
that allows the navigation through a hierarchical structure, one does not want to write a
different script for each different level of the structure but it is preferable to write a sin-
gle script that can be applied to different points in the structure. This is possible by at-
taching a parameter (a string) to the URL of a script. For instance, a URL can have the
form “<http://myhost/script.cgi?parameter”> where “<http://myhost/script.cgi”> is the
URL of the web script and “parameter” is an optional parameter that is passed to the script.
A URL parameter can be retrieved inside a script by the I/O action

getUrlParameter :: IO String

which returns the part of the URL following the character “?”. Note that a URL parameter
should be “URL encoded” to avoid the appearance of characters with a special meaning. The
library HTML.Base provides the functions urlencoded2string and string2urlencoded to
decode and encode such parameters, respectively.

As a simple example, we want to write a web script to navigate through a directory
structure. The current directory is the URL parameter for this script. The script extracts
this parameter by the use of getUrlParameter and shows all entries as a HTML list [Browse

77

Program][Download Program] (the prelude function mapM applies a mapping from elements
into actions to all elements of a list and collect all results in a list):

showDirPage :: IO HtmlPage
showDirPage = do

param <- getUrlParameter
let dir = if null param then "." else urlencoded2string param
entries <- getDirectoryContents dir
hexps <- mapM (entry2html dir) entries
return $ page "Browse Directory"

[h1 [htxt $ "Directory: " ++ dir], ulist hexps]

The I/O action getDirectoryContents is defined in the library System.Directory (in pack-
age directory) and returns the list of all entries in a directory. The function entry2html
checks for an entry whether it is a directory. If this is the case, it returns a link to the same
web script but with an extended parameter, otherwise it simply returns the entry name as an
HTML text (doesDirectoryExist is defined in the library System.Directory and returns
True if the argument is the name of a directory):

entry2html :: String -> String -> IO [HtmlExp]
entry2html dir e = do

direx <- doesDirectoryExist (dir ++ "/" ++ e)
if direx

then return [href ("?" ++ string2urlencoded (dir ++ "/" ++ e))

else return [htxt e]

[htxt e]]

7.9.2 Cookies

Cookies are small pieces of information (represented by strings) that are stored on the client’s
machine when a client communicates to a web server via his browser. The web server can
sent cookies to the client together with a requested web document. If the client wants to
retrieve the same or another document from the web server, the client’s browser sends the
stored cookies together with the request for a document to the browser. Thus, cookies can be
used to identify the client during a longer interaction with the web server (also across various
web scripts stored on the same web browser). Hence, cookies are used to implement session
data as described in Section 7.6. In this section, we describe more details about cookies if
one is interested to implement his own session handling.

Basically, a cookie has a name and a value. Both parameters are of type string. Cook-
ies can also have additional parameters to control their lifetime, validity for different web
servers or regions on a web server etc (see definition of datatype CookieParam in the library
HTML.Base) which we will not describe here. As the default, a cookie is a valid during the
client’s browser session for all documents in the same directory or a subdirectory in which
the cookie was set.

The library HTML.Base provides two functions to set and retrieve cookies. As described

above, a cookie is set by adding it with some web page. For doing so, there is the function

78

addCookies :: [(String ,String)] -> HtmlPage -> HtmlPage

which adds a list of cookies, i.e., name/value pairs, to a web page. These cookies are submitted
with the page to the client’s browser. To retrieve cookies (that are previously sent), there is
an I/O action

getCookies :: IO [(String ,String)]

that returns the list of all cookies (i.e., name/value pairs) sent from the browser for the
current HTML page.

As a simple example, we want to use cookies to write a web application where a user
must identify himself and this identification is used in another independent script. The
identification is done by setting a cookie of the form ("LOGINNAME",<name>) where <name>
is the user’s name. We implement a “login form” that sets this cookie as follows [Browse
Program][Download Program]:

loginForm :: HtmlFormDef ()
loginForm = simpleFormDef

[htxt "Enter your name: ", textField tref "",

hrule ,
button "Login" handler

]

where

tref free

handler env = return $

addCookies [("LOGINNAME", env tref)] $

page "Logged In"

[h2 [htxt $ env tref ++ ": thank you for visiting us"]]

-- A web page containing the login form:
loginPage :: IO HtmlPage
loginPage = return $ page "Login" [formElem loginForm]

First, the form asks the user for his name. The cookie is set together with the acknowledgment
page (defined in function “handler”).

Now we can write another web script that uses this cookie. This script shows the user’s
name or the string "Not yet logged in" if the user has not used the login form to set
the cookie. Using the function getCookies, the implementation is quite simple (the function
lookup, defined in the prelude, searches for a name in a name/value list; it returns “Nothing”
of the name was not found and “Just v” if the first occurrence of the name in the list
has the associated value v; the prelude function maybe processes these two cases) [Browse
Program][Download Program]:

getNamePage :: IO HtmlPage
getNamePage = do

cookies <- getCookies
return $ page "Hello" $

maybe [h1 [htxt "Not yet logged in"]]

79

(\n -> [h1 [htxt $ "Hello , " ++ n]])
(lookup "LOGINNAME" cookies)

As mentioned above, cookies need special support on the client’s side, i.e., the web browser
of the client must support cookies.
If cookies are essential for an application, one should
check whether the client allows the setting of cookies. This can be done by trying to set a
cookie and by checking whether this was successful. For instance, one can modify the above
login script as folllows. The first page immediately sets a cookie with name “SETCOOKIE”.
Then the handler checks whether this cookie has been sent by the client’s browser. If this
cookie is not received, it returns a page with the message “Sorry, can’t set cookies.” instead
of the acknowledgment page which sets the cookie “LOGINNAME” [Browse Program][Download
Program]:

loginPage :: IO HtmlPage
loginPage = return $

addCookies [("SETCOOKIE","")] $ page "Login" [formElem loginForm]

loginForm :: HtmlFormDef ()
loginForm = simpleFormDef

[htxt "Enter your name: ", textField tref "",

hrule ,
button "Login" handler

]

where

tref free

handler env = do

cookies <- getCookies
return $

maybe (page "No cookies" [h2 [htxt "Sorry , can’t set cookies."]])

(\_ -> addCookies [("LOGINNAME",env tref)] $ page "Logged In"

[h2 [htxt $ env tref ++ ": thank you for visiting us"]])

(lookup "SETCOOKIE" cookies)

7.9.3 Style Sheets

The library HTML.Base provides various operations to add style sheets to web pages (pageCSS)
or to add style classes to individual elements (e.g., style, textstyle, blockstyle). The
package html2 also contains libraries to use Bootstrap renderings in web pages, see library
HTML.Styles.Bootstrap4 for more details.

80

Chapter 8

Further Libraries for Application
Programming

• Databases [17]

• Constraints

• GUI [15]

• XML

• Distributed Programming, ports [14]

• Metaprogramming

81

Acknowledgment

Thanks to Jeffrey Brown for catching some errors and offering suggestions.

82

Bibliography

[1] S. Antoy. Definitional trees.

In Proc. of the 4th Intl. Conf. on Algebraic and Logic

Programming, pages 143–157. Springer LNCS 632, 1992.

[2] S. Antoy. Optimal non-deterministic functional logic computations. In 6th Int’l Conf. on
Algebraic and Logic Programming (ALP’97), volume 1298, pages 16–30. Springer LNCS,
1997.

[3] S. Antoy, R. Echahed, and M. Hanus. A needed narrowing strategy. Journal of the

ACM, 47(4):776–822, 2000.

[4] S. Antoy and M. Hanus. Compiling multi-paradigm declarative programs into Prolog. In
Proc. International Workshop on Frontiers of Combining Systems (FroCoS’2000), pages
171–185. Springer LNCS 1794, 2000.

[5] S. Antoy and M. Hanus. Functional logic design patterns. In 6th Int’l Symp, on Func-
tional and Logic Programming (FLOPS’02), pages 67–87, Aizu, Japan, 9 2002. Springer
LNCS 2441.

[6] S. Antoy and M. Hanus. Set functions for functional logic programming. In Proceedings
of the 11th ACM SIGPLAN International Conference on Principles and Practice of
Declarative Programming (PPDP’09), pages 73–82. ACM Press, 2009.

[7] S. Antoy and M. Hanus. New functional logic design patterns. In 20th International
Workshop on Functional and (constraint) Logic Programming (WFLP 2011), pages 19–
34, Odense, Denmark, 7 2011. Springer LNCS 6816.

[8] S. Antoy and M. Hanus. Default rules for Curry. Theory and Practice of Logic Program-

ming, 17(2):121–147, 2017.

[9] J. Christiansen, S. Dylus, and F. Teegen. Probabilistic functional logic programming. In
Proc. of the 20th International Symposium on Practical Aspects of Declarative Languages
(PADL 2018), pages 3–19. Springer LNCS 10702, 2018.

[10] G. Shute. The blocks world, 2020. [Online; accessed 8-November-2020].

[11] E. Gamma, R. Helm, R. Johnson, and J. Vlissides. Design Patterns: Elements of

Reusable Object-Oriented Software. Addison Wesley, 1994.

[12] M. Hanus. The integration of functions into logic programming: From theory to practice.

Journal of Logic Programming, 19&20:583–628, 1994.

83

[13] M. Hanus. Teaching functional and logic programming with a single computation model.
In Proc. Ninth International Symposium on Programming Languages, Implementations,
Logics, and Programs (PLILP’97), pages 335–350. Springer LNCS 1292, 1997.

[14] M. Hanus. Distributed programming in a multi-paradigm declarative language. In Proc.
of the International Conference on Principles and Practice of Declarative Programming
(PPDP’99), pages 376–395. Springer LNCS 1702, 1999.

[15] M. Hanus. A functional logic programming approach to graphical user interfaces. In
International Workshop on Practical Aspects of Declarative Languages (PADL’00), pages
47–62. Springer LNCS 1753, 2000.

[16] M. Hanus. High-level server side web scripting in Curry. In Proc. of the Third Inter-
national Symposium on Practical Aspects of Declarative Languages (PADL’01), pages
76–92. Springer LNCS 1990, 2001.

[17] M. Hanus. Dynamic predicates in functional logic programs. Journal of Functional and

Logic Programming, 2004(5), 2004.

[18] M. Hanus. Multi-paradigm declarative languages. In Proceedings of the International
Conference on Logic Programming (ICLP 2007), pages 45–75. Springer LNCS 4670,
2007.

[19] M. Hanus. Lightweight declarative server-side web programming. In Proc. of the 23rd
International Symposium on Practical Aspects of Declarative Languages (PADL 2021),
pages 107–123. Springer LNCS 12548, 2021.

[20] M. Hanus, S. Antoy, B. Braßel, M. Engelke, K. H ¨oppner, J. Koj, P. Niederau, B. Pee¨oller,
R. Sadre, F. Steiner, and F. Teegen. PAKCS: The Portland Aachen Kiel Curry System.
Available at <https://www.informatik.uni-kiel.de/~pakcs/>, 2023.

[21] M. Hanus (ed.). Curry: An integrated functional logic language (vers. 0.9.0). Available

at <http://www.curry-lang.org>, 2016.

[22] S. Peyton Jones, editor. Haskell 98 Language and Libraries—The Revised Report. Cam-

bridge University Press, 2003.

[23] P. Wadler. How to declare an imperative. ACM Computing Surveys, 29(3):240–263,

1997.

[24] Wikipedia contributors. Blocks world — Wikipedia, the free encyclopedia, 2020. [Online;

accessed 8-November-2020].

84

Index

(), 13
++, 22
:, 38
=:=, 14
==, 14
>>, 34
>>=, 34
[u,v..], 41
[u,v..w], 41
[u..], 41
[u..v], 41
$, 66
&, 14
&>, 14
&&, 14
||, 14
_, 7

addCookies, 78
anonymous variable, 7
associativity

values, 12

atom, 12
attribute (HTML tag), 62

BaseHtml, 63
BaseStruct, 63
BaseText, 63
binary search tree, 46
binary tree, 19, 46
branch, 46
empty, 46

bold, 63
Bool, 13
Boolean conjunction, 14
Boolean disjunction, 14
Boolean equality, 14, 30

breakline, 63
button

radio, 76

calendarTimeToString, 67
CGI, 66
Char, 13
child, 38
comprehension

generator, 41
guard, 41
concatMap, 65
conditional expression, 6, 13
conjunction

Boolean, 14
parallel, 14

Cons, 38
constrained equality, 14, 31
constrained expression, 14
constraint, 9

equational, 9

cookie, 78
CPM, 49
curry2cgi, 67
currydoc, 42
cypm, 49

data constructor, 19
data declaration, 19

data constructor, 19
type, 19
type constructor, 46
type variable, 20

data structure, 11
infinite, 26
default rule, 18
defining equation, 5

85

design pattern, 54
disjunction

Boolean, 14

do, 35
do notation, 35
documentation, 42
doesDirectoryExist, 78
doesFileExist, 75
done, 34

ensureNotFree, 32
equality

Boolean, 14
constrained, 14

equation

defining, 5

equational constraint, 9
evaluation, 15, 25

completeness, 25
lazy, 15, 25
short circuit, 15
strategy, 25

event handler, 69
expression

conditional, 6, 13
constrained, 14
definition, 12
ground, 32
HTML, 62
extra variable, 30

filter, 43
flexible, 31
floundering, 31
folding functions, 44
foldr, 44
form, 68
free variable, 8
function, 11

anonymous, 15, 24
application, 12
argument, 15
argument binding, 15
flexible, 31

higher order, 23
identifier, 15
nested, 28
rigid, 31

functional logic languages, 30
functional pattern, 17

getChar, 34
getCookies, 79
getDirectoryContents, 78
getLine, 35
getLocalTime, 67
getUrlParameter, 77
ground expression, 32

h1, 63
higher-order

on lists, 43

hrule, 63
HTML, 61

environment, 69
event handler, 69
expression, 62
form, 68
reference, 68

HtmlPage, 64
htmlQuote, 63
htxt, 63

if-then-else, 13
image, 63
infinite structures, 41
infix, 12
infix operator, 5

associativity, 12
character set, 12
declaration, 12
precedence, 12

infixl, 12
infixr, 12
Int, 13
IO, 33
italic, 63

juxtaposition, 12

86

layout, 29
layout rule, 6
laziness, 25
let, 29
let clause, 29
library

HTML.Base, 64

lines, 66, 74
List, 13
list, 13, 38

comprehension, 41
cons, 21
definition, 21, 38
enumeration, 21, 39
head, 21
higher-order functions, 43
nil, 21
notation, 21, 38
ranges, 41
tail, 21
logic variable, 30
lookup, 79

map, 43
mapM, 78
maybe, 79
monadic I/O, 33

narrowing, 31
Nil, 38
non-deterministic operation, 9, 16

off-side rule, 6, 30
operation, 11

non-deterministic, 9, 16

operator, 5
infix, 5
ordered tree, 47
otherwise, 16
overloading, 22, 32

package, 51
html, 64
html2, 61

page, 64

PAKCS, 4
pakcs, 4
parallel conjunction, 14
parameter

URL, 77

pattern, 7

functional, 17
intent, 54
name, 54
solution, 54
structure, 54
tag, 54

pattern matching, 16
pattern variable, 30
powerset, 44
precedence

values, 12

prefix, 12
Prelude, 4, 12
program, 5
putChar, 34
putStrLn, 34

readFile, 35
removeFile, 75
renameFile, 75
residuation, 31
return, 34
reverse, 22
rewrite rule, 15, 16

left-hand side, 15
right-hand side, 15
structure, 16

rigid, 31
root, 38, 46
rule, 5

conditional, 16
default, 18

scope, 27

local, 27, 28
shadowing, 28

set function, 44
library, 44

87

shadowing, 28
show, 36
showBaseHtmls, 64
showHtmlPage, 64
static scoping, 27
strategy, 25
String, 13, 21

tags (HTML), 61
time, 67
toUpper, 35
tree, 38

traversal, 47

tuple, 13, 22
type, 13, 19

builtin, 13
polymorphic, 20
synonym, 20

type, 20
type constructor, 46
type inference, 6
type variable, 20
types, 6

unit type, 13
unlines, 74
URL

parameter, 77

value, 5

definition, 25

variable

anonymous, 7
free, 8
local, 28

W3C, 61
where, 27
where clause, 27
writeFile, 35

zip, 75

88
