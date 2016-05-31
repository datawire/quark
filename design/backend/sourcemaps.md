The Problem
===========

Sometimes unexpected exceptions occur that originate in quark
code. When this happens, key portions of the target language stack
trace reference generated code. If the root cause of the bug is in the
quark code, then it can be difficult to track down the cause because
the generated code does not currently reference the original source.

Proposals
---------

A few observations...

1. If the compiler is doing its job, namely ensuring identical
   behavior across different targets, then we only need to provide a
   really slick debugging experience across one target.

2. As a fallback, we can always have an external sourcemap and a
   utility that will use that sourcemap to transform a target
   stacktrace that includes a mix of generated/non-generated sources
   into one that references the original quark sources.

Despite 1 and 2, it is likely we can provide a nicer experience on a
number of targets since there ways to intercept uncaught exceptions on
several (possibly all) of our targets and transform them prior to
displaying the result. Javascript and Java both support sourcemaps
natively, not sure what the story is for Ruby.

An even more basic fallback that would be good would be to simply
include comments at the end of each generated line of code that
references the originating line of quark.
