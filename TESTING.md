# Testing Quark

Quark has two categories of tests. Compiler tests and end-to-end
tests. The compiler tests cover the correctness of the transformations
performed by various stages of the compiler. These are expressed as
pure python unit tests that operate on highly isolated fragments of
input and output representations for the various stages they are
testing. These tests can be run with pytest, e.g.:

        py.test

The end-2-end tests cover both the correctness of the compiler
transformations and the primitive definitions provided by the default
quark.q file shipped with the compiler as executed on all target
backends. These tests are run in each target environment using the
test frameworks native to that language. The qtest program provides a
convenient interface for building and running various combinations of
these tests.

      ./qtest run

You can use `./qtest -h` for more detailed help info. The input files
that qtest operates on are in `quarkc/test/e2e`. You can input raw .ir
or .q files. For the most part, the individual test files within this
directory are (roughly) organized by feature and each one attempts to
provide as isolated a test of that feature as possible.
