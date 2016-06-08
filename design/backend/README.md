Introduction
============

There are a large number of issues related to the design of the quark
compiler's backend. The content in the other files in this directory
is aimed at capturing some of these and gathering requirements for an
improved design. The content in this document itself defines some
terminology, describes the nature of the problem, and provides some
framing for the shape of the solution.

The Problem
===========

At a high level a compiler is just a function that transforms input
source into target specific code:

                          +----------+
    Quark Input Source -->| Compiler |--> Target Specific Code
                          +----------+

Zooming in one level, the design of the quark compiler can roughly be
broken into two intermediate steps: the *Frontend* and the *Backend*.

The Frontend performs all the processing, checks, and transformations
that are fully generic to *any* target language and produces as output
an intermediate representation of this portion of the overall
transformation:

                          +----------+
    Quark Input Source -->| Frontend |--> Intermediate Rep
                          +----------+

The Backend then takes this intermediate representation as input and
then performs all the processing that is specific to the chosen target
language in order to produce the target specific code:

                          +----------+                        
    Intermediate Rep   -->| Backend  |--> Target Specific Code
                          +----------+

There might be any number of other finer grained processing steps and
related intermediate representations within the Frontend or Backend,
but the particular intermediate representation that sits at the
boundary between the Frontend and Backend is important, so we will
label it the *IR*. The precise definition of this IR is key to a much
improved compiler design.

The Current IR
--------------

Before trying to understand what an improved IR might look like, it is
first helpful to understand the current IR and examine some of its
deficiencies.

The current IR is basically an AST that is annotated with symbol
tables and propogated type information:

                          +----------+                 
    Quark Input Source -->| Frontend |--> Annotated AST
                          +----------+

                          +----------+
    Annotated AST      -->| Backend  |--> Target Specific Code
                          +----------+

The backend functions as a more or less simplistic rendering of the
annotated AST into code (a map of filenames -> content) for a given
target. This is done with a set of traversals over the Annotated AST
that dispatch to target-specific functions. The traversals are fixed
across all backends. Only the target-specific functions are currently
customized with target-specific behavior.

Although this design has a number of deficiencies, it actually works
pretty well in some areas. Namely, expressing computation: basic
blocks, if/else, while, break/continue, function calls, method
invocation, number/string literals, etc. These are all alreas where
the input is structurally very similar to the output across our
current set of targets, and for that reason the simplistic rendering
model works pretty well. Support for a target language proceeds pretty
quickly through these areas as it is mostly just plug and chug for how
to spell semantically similar constructs in different languages. In
other words if you ignore things like namespaces and statics, it is
pretty easy to build a backend that supports basic computation,
e.g. defining the "factorial" function.

Where the implementation becomes significantly more opaque is when it
comes to [namespaces](namespaces.md) and [static
initialization](initialization.md). In these cases the input and
output structures may differ somewhat significantly. The current
target implementations attempt to apply a minimal structural transform
from input to output and consequently result in inconsistent semantics
in a number of cases. This is largely because each target was written
independently and in the absense of a well defined model for how
static initialization is supposed to work in a consistent way across
each backend. This points to two separate problems in this area:

 1. Lack of well defined static initialization semantics for quark
    itself, and the implicit semantics don't necessarily map well to
    the lowest common denominator semantics available across our
    target languages.

 2. The design of the backend itself makes it difficult to formally
    capture the lowest common denominator semantics. Put another way,
    we weren't encouraged to define/evolve a lowest common denominator
    set of semantics as we expanded the number of backends.

---------------------

Unorganized Notes
=================

Problems:

 - If the structure of the code produced for different target
   languages needs to differ signficantly from each other, it is also
   difficult to accomodate with this design.

 - Backend functions as a simple rendering of the annotated AST, but
   there are lots of reasons that target code needs to be structurally
   different from input code. It is currently difficult to acheive
   this.

 - Backend permits differences where none should be allowed, and
   enforces/encourages similarity where differences would be
   preferred.

 - Clearly the lack of structured types, i.e. using strings to build
   up target code instead of a more formal representation is a
   problem. It makes it harder to do things like sourcemaps and to do
   further transformations if necessary to reach a given target. The
   interesting question though is what should a formal representation
   look like. Maybe we should just start with a formal representation
   for what is already implicitly defined via the gen family of
   functions?

IR:
---

Idioms:

 - optional args/overloading
 - getters/setters
 - errors/exceptions
 - callables/lambdas/whatever

Crust:

 - static variables (constant immutable, or initialized to null and mutated later)
 - static fields (constant immutable, or initialized to null and mutated later)
 - static methods
 - functions
 - interfaces
 - classes
 - namespaces

Literals:

 - int
 - float
 - string
 - list
 - map

Computation:

 - if/else
 - while
 - invoke
 - call
 - try/finally
