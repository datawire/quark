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

There are a number of reasons this design is cumborsome:

 - The Annotated AST is structurally very close to the input
   source. If the structure of the code produced for a given target
   needs to differ significantly from the structure of the input
   source, then it is difficult to acheive within this design.

 - If the structure of the code produced for different target
   languages needs to differ signficantly from each other, it is also
   difficult to accomodate with this design.

---------------------

Unorganized Notes
=================

Problems:

 - Backend functions as a simple rendering of the annotated AST, but
   there are lots of reasons that target code needs to be structurally
   different from input code. It is currently difficult to acheive
   this.

 - Backend permits differences where none should be allowed, and
   enforces/encourages similarity where differences would be
   preferred.
