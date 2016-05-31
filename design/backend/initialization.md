The Problem
===========

Different languages have different bootstrapping semantics. Quark is
trying to provide a single consistent set of semantics across these
different targets. Currently the support quark has for static
variables has a number of corner cases that don't work on dynamic
backends because the definition and initialization code produced on
those backends is interleaved in an order that breaks down when static
circular references are used.

The simplest example of this is two mutually dependent class
definitions:

    class A {
        static A foo = new A();
    }

    class B {
        static B foo = new B();
    } 

In a dynamic language (or at least the ones I'm aware of), the input
source for these two class definitions cannot ever map in a simple one
to one way to output sources. Consider what happens if we attempt this
in python:

    class A:
        foo = B()

    class B:
        foo = A()

Whichever definition we try to evaluate first will blow up because it
requires the other class to exist first in order to successfully
finish. (Note, python does have metaprogramming facilities that would
allow something close to a simple transformation, however not all
target languages necessarily have comparable features.)

More generally, if we have a larger more complex network of classes in
a multiple namespace library, we would need to separate our code into
two distinct phases.

  Phase 1: Pure definitions that do not perform any
           initialization. These can be imported in any order without
           tripping over each other.

    pkg1:

        class A:
            foo = None

            @staticmethod
            def init():
              A.foo = B()

    pkg2:

        class B:
            bar = None

            @staticmethod
            def init():
              B.bar = A()

  Phase 2: On library load, execute all initialization code in some
           defined order.

    def init():
        import pkg1
        import pkg2
        pkg1.A.init()
        pkg2.B.init()

Proposed Solution
=================

Replace the simplistic mapping of input code to output code with a
slightly more sophisticated model that formally distinguishes between
definition and initialization.

Each quark compilation unit produces two outputs for a given
target. The first output is a set of pure definitions,
i.e. definitions that do not contain any non-constant static values.

The second output is an entry point function that initializes the
quark compilation unit (library) by running code to fill in any
dynamically computed static variables.

-----------

Unorganized Notes
-----------------

Hypothesis:

  Define a single entry point that always gets called when a
  distribution unit (i.e. library) is loaded.

  Turn all our definitions into "pure definitions" (no initialization
  code).

  Run all the initialization code in a defined order from our single
  entry point.




Java:

  In Java, classes are loaded and initialized on demand. Java class
  loading occurs in two phases, the class will first be loaded and all
  static fields will be initialized to null regardless of what
  expressions may be assigned to them. Then, in a separate phase,
  static initialization code will run in order to set those fields to
  the proper values.

  class A {
      static B foo = new B();
  }

  class B {
      static A foo = new A();
  }

  When A or B are first encountered, both will be loaded and then A or
  B will be constructed, possibly in a different order depending on
  whether A or B is encountered first. (Need to check on the exact
  behavior here and what is guaranteed/accidental.)

Python:

Ruby:

Javascript:

  
