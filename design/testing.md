
Introduction
============

Testing quark is hard, and the quark tests suck for a variety of
reasons. This document is intended to better describe the problem so
we have a better chance of fixing it.

The Problem
===========

Compiler tests need to be rigorous. The number of possible input
permutations for a compiler is huge. The compiler is performing a
complex series of transformations on that input that can fail at many
different stages.

The compiler is producing N outputs for any given input, and all of
these outputs need to rigorously satisfy certain constraints. The FFI
for any given target needs to be stable across compiler changes. The
behavior of the output needs to be both correct and identical across
all targets.

Testing the output is environmentally complex. It requires a
functioning toolchain for each target language.

Testing I/O is hard. I/O tests have their own set of environmental
complexities such as finding free ports and orchestrating concurrent
threads or processes. (Does it have to be, are we just being dumb
about this and doing end-to-end testing for stuff we could use much
simpler unit tests to check?)

Observations
------------

- Testing a long and complex series of transformations with end-to-end
  tests is extremely inefficient. The number of permutations of
  input/output that need to be validated grows combinatorially
  relative to testing each smaller transformation in isolation. This
  results in both a long running test suite as well as lower
  confidence in test coverage.

- Mixing library tests in with the compiler tests is a particularly
  egregious example of the prior observation.

Current Tests
-------------

Category 1:

    test_dispatch.py
    test_environment.py
    test_versioning.py

  These are all pure python tests of various compiler components. They
  do not interact with the filesystem at all.

Category 2:

    test_parse.py
    test_compile.py
    test_apidoc.py

  These tests run a subset of the transformations the compiler does
  and compares the intermediate output to expected results.

Category 3:

    test_emit.py[ffi]

  Runs the compiler and builds the output.

Category 4:

    test_emit.py[emit]

  Runs the compiler, runs the output, and then does stuff in pure
  python with the output of the run program (diffs, asserts, etc).

Category 5:

    test_lib.py

  Runs the compiler on quark unit tests, runs the output, asserts that
  the quark test runner does not report failures.

Category 6:

    test_interop.py
    test_examples.py

  Runs the compiler and then runs the resulting programs interactively
  via expect.

Disorganized Notes
==================

Why don't we have confidence?
  - Major categories of tests are missing.
  - First test in each category requires developing a test harness.
    + high activation energy

We need to be at the point where every test

 Spec out what exactly a quark testcase looks like.

 Quark Test Runner:
   Provide a utility method that can be invoked from main that will
   introspect, list, filter, and optionally run and report results for
   all the tests within a given quark package.

 Write some skeletal/exemplar rxframe tests.

 quark test coverage map:

     parser -> parse tests
     compiler -> compile tests
     backends -> emit tests
     browser backend -> ???
     builtin -> ???
       string
       buffer
       json
     runtime -> ???
       http
       ws
       timers
       locks
     examples -> ???
     quark cli -> ???
     docs -> ???

What does CI/CD mean (for quark):

  - For every delta to production code we write going forward, we need
    an accompanying test(s) added or an existing test(s) fixed.  +
    This excludes exploratory coding, poc's, prototypes, and refactors.

  - Every piece of production code needs a corresponding test suite.
    + Easy for some of our code, not so easy for other parts of our code.
      - quark parser -> yay!
      - quark compiler -> yay!
      - backends -> yay!
      - quark standard library -> :-(
      - wait, we have a quark test harness now -> yay!
        + but that only gets us so far -> :-(

      - breakdown of quark code:
        + primitives.q -> harness yay, just add tests as things break!
        + logging.q -> harness mostly yay, need to account for different output per lang
        + reflect.q -> harness yay, just add tests!
        + json.q -> harness yay, just add tests!
        + concurrent.q -> harness yay, just add tests!
        + http.q, ws.q -> harness only gets you so far, testing I/O will require some more sophisticated orchestration
        + service.q -> harness yay, if we stub out interaction with I/O

      - Strategy:
        + break down pieces and test in isolation:
          isolate service from I/O and test pure state machine
        + strong coverage for basic I/O on its own
        + have smoke tests that verify the pieces work when brought together
      - this strategy minimizes the complexity of the orchestration
        required to provide confidence

    + Testing strategies that could be "lib"erated and reused:
      - diffing, e.g. output diffing, log diffing from test_emit/test_example
      - orchestration, e.g. test_interop
