###Quark Compiler Design

This diagram below describes the internal design of the quark
compiler.


                |
                |
            (input.q) [1]
                |                            
                +---(generated-metadata.q)-----------------+ [8]
                |                                          |
                +----(annotator-modified)----+ [5]         |
                |                            |             |
               \|/                           |             |
      +-------------------+                  |             |
      | parser.py: [2]    |                  |             |
      |   ast.py          |                  |             |
      |   grammar.py      |                  |             |
      |   parsimonious    |                  |             |
      +-------------------+                  |             |
                |                            |             |
                |                            |             |
              (AST) [3]                      |             |
                |                            |             |
                |                            |             |
               \|/                           |             |
      +-------------------+                  |             |
      | compiler.py: [4]  |                  |             |
      |   Crosswire       |                  |             |
      |   ApplyAnnotators-|------------------+             |
      |   Def             |                                |
      |   Use             |                                |
      |   Resolver        |                                |
      |   Check           |                                |
      +-------------------+                                |
                |                                          |
                |                                          |
         (Annotated AST) [6]                               |
                |                                          |
                |                  +-------------------+   |
                +----------------->| Reflector [7]     |---+
                |                  +-------------------+    
               \|/
      +-------------------+
      | backend.py [9]    |
      +-------------------+
                |
                |
    (function calls/strings) [10]
                |
               \|/
      +-------------------+
      | codegen:          |
      |   java.py         |
      |   python.py       |
      |   javascript.py   |
      +-------------------+
                |
                |
         (native package) [11]
                |
               \|/



1. Input is hand written quark code supplied in one or more files. The
builtin.q file is always automatically added.

2. The parser uses parsimonious plus a small amount of helper code
   in grammar.py. The helper code has the following purpose:

    - reduce some of the boilerplate around keyword and symbol rules
    - use decorators so that rule definitions appear next to the
      code that processes a given rule
    - automatically associate AST elements with their originating
      nodes

   The parser produces the AST defined in ast.py

3. The AST defined in ast.py has a number of conveniences:

    - Traversals:

      Any AST node, including all children, can be traversed as follows:

          node.traverse(visitor, ...) # any additional args will be passed to the visitor methods

      A visitor looks like this:

          class MyVisitor:

              def visit_xxx(self, node, ...):
                  # do stuff

              def leave_xxx(self, node, ...):
                  # do other stuff

    - Round tripping: Use node.code() to convert any AST node back to canonical text.

    - Copying: Use node.copy() to perform a deep copy on any AST node.

4. The compile phase itself consists of a number of traversals. These
   traversals annotate the AST with additional information.

   The compile phase defines a Root AST object that holds all files.

   The Crosswire traversal serves to create parent pointers
   (e.g. callable, clazz, package, etc) and initialize fields that
   are filled out by the later traversals:

    - The env field is set up to map names to definitions:
      + All identically named packages share a single env dictionary.
    - The resolved field is set up to hold type information:
      + TExpr: a type, plus a bindings dictionary

   The ApplyAnnotators traversal applies python callbacks keyed to
   annotations. These are basically syntactic macros. The output of
   these callbacks can be either text that is parsed into AST nodes,
   or it can be directly constructed/copied/modified AST nodes. In
   either case, if an annotator is triggered it causes the entire
   file to be reparsed.

   Once all annotations have been applied, the remaining traversals
   fill out additional information:

    - Def populates the env dictionaries.
    - Use looks up variables and creates pointers to their
      definitions as well as setting up TExprs.
    - Resolver propogates type information.
    - Check performs various semantic checks.

   Once all the phases have completed successfully, the AST has been
   fully annotated with type information. 

5. Input modified by annotators gets reparsed.

6. The successfully annotated AST is first augmented by the Reflector
   traversal.

7. The Reflector traversal generates additional code that captures
   reflective metadata to create implementations of Class and Field to
   match the types that have been defined in this compilation unit.

8. The Reflector traversal produces regular .q code which gets passed
   through the parser and compiler again.

9. Once the AST has been successfully annotated and augmented with
   metadata, it is passed to the backend. The backend makes heavy use
   of both @dispatch and @overload decorators to do multidispatch. The
   former is used on functions, the later is used on methods.

   The backend traverses the annotated AST and builds up strings of
   code. These strings of code are combined using the functions in the
   specific backend (java/python/javascript/etc).

10. Logically the arrangement of function calls used to build up
    strings can be vaguely considered something of an IL. This should
    probably be formalized and use better data structures.

11. The final output of the compiler is a directory tree that includes
    package metadata (e.g. setup.py, package.json, pom.xml). This
    package metadata includes a dependency on runtime packages that
    are necessary to support the quark generated code.
