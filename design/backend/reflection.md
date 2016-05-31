The Problem
===========

The reflection stage uses quark itself as a means of producing
additional stuff to emit. This is slow because for everything we parse
we generate volumes more stuff to parse. This is one of the reasons
parsing shows up as a hot spot, it's not necessarily that parsimonious
is slow, it is probably at least in part that we just do way more
parsing than we really need to.

Proposals
---------

A proper IL could probably fix this issue... need more detail about
the reflection-related requirements for such an IL. This in turn
depends on better documenting the reflection design which very much
depends on/relates to the initialization issues documented in this
directory.
