Rough spots
===========

Any
---

### generic map access ###

`Any.asMap()` returns `Map<Scalar,Any>`. Quark scalars are not
directly assignable to Scalar so one cannot easly traverse such maps
with literal keys.

    anAny.asMap()[11]

complains.

### Quark interface types ###

`Any` does not have an API (or a story for targets at all, for that
matter) how to access a quark interface through the `Any`

A requirement is to be able for targets to distinguish a target object
that implements a quark interface from a random target object.

Implementing multiple quark interfaces
--------------------------------------

javascript does not have enough language support to allow a simple
implementation of `Any` interface support when a class implements
several quark interfaces.

Custom assert
-------------

### Current rule: ###

Void parameterless functions and methods calling `assertEqual` or
`assertNotEqual` are turned into `ir.Check`

### Proposed new rule: ###

We should introduce _assertable_ property in the frontend, and apply
it to the two primitives.

A void parameterless function/method calling an _assertable_ is turned
into `ir.Check`

A function or method accepting parameters calling an _assertable_
becomes itself an _assertable_ and is *not* turned into `ir.Check`


Boxing
------

quark.q could use a nicer syntax for types that need boxing


Nullable scalars
----------------

quark scalars cannot be null. some targets can not store raw scalars
in collections, but box them (e.g. java).

all quark primitives that deal with boxed types should handle a `null`
boxed reference and convert it to the defined nulled value

quark.q could use a nicer syntax for null-value of unboxed scalar


Callables
---------

callables remain untouched and partially undefined.
- fixed type signatures?
- need syntax for custom type signatures?


Reflection
----------

we lost reflection on the way, do we need it at all if we support Callables
