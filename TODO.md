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

    // having
    interface Itf1 { ... }
    class Foo extends Itf1 { ... }
    Any anAny = unsafe(new Foo());

    // how to check if anAny contains a quark object (aka interface)
    AnyInterface anItf = anAny.asInterface() // a tentative first step

    // how to  safely cast the object to the desired interface
    Itf1 refByItf1 = anItf.???? // TODO


It gets only a bit more complicated with classes implementing multiple interfaces. 

Implementing multiple quark interfaces
--------------------------------------

Javascript does not have enough language support to allow a simple
implementation of `Any` interface support when a class implements
several quark interfaces.

### inside of quark problem ###

How to get a typed reference to an interface

    // having
    interface Itf1 { ... }
    interface Itf2 { ... }
    class Foo extends Itf1, Itf2 { ... }
    Any anAny = unsafe(new Foo());

    // see section on Quark Interface Types above, same issues apply here
 
### outside of quark problem ###

It should be relatively easy to construct a hand-written javascript
class that implements more than one quark interface so that it can
function correctly inside an Any


Void
----

Quark `void` is a strange thing -- one can actually define variables
of type void. All quark types are assignable to a `void` variable or parameter.

There is a primitive `Any unsafe(void x)` that tricks quark into allowing anything
to be converted to an `Any`

There exists a hack in the IR that transforms `ir.Void` parameters to
functions into `ir.Any` parameters which effectively makes them be
`Object` on the target.

Custom assert
-------------

### Current rule: ###

Void parameterless functions and methods calling `assertEqual` or
`assertNotEqual` are turned into `ir.Check`

### Proposed new rule: ###

We should introduce `ir.Assertable` annotation and make the frontend
apply it to the two primitives.

Remove extra logic for emitting `ir.Check` from the frontend


A function or method calling an _assertable_ becomes itself an
_assertable_. Backend has enough information to easily propagate this
property across all definitions.

A void parameterless function/method that is _assertable_ is
transformed into `ir.Check`

A function/method accepting parameters and is _assertable_ is *not*
turned into `ir.Check`

#### Go ####

The `go` target will need to work a bit harder to emit custom asserts,
as test object needs to be passed along.

Test classes
------------

Test classes must not have a constructor and cannot have fields.
This is curently not nicely enforced. frontend also generates the
empty constructor that must then be thrown away.

Boxing
------

quark.q could use a nicer syntax for types that need boxing:

    primitive Map<K,V>
    for java import "java.util.Map" {Map<$K_boxed, $V_boxed>}
    //                                   ^^^^^^^^  ^^^^^^^^


Nullable scalars
----------------

quark scalars cannot be null. some targets can not store raw scalars
in collections, but box them (e.g. java).

all quark primitives that deal with boxed types should handle a `null`
boxed reference and convert it to the defined nulled value

quark.q could use a nicer syntax for null-value of unboxed scalar

        V __get__(K key) for java import "java.util.Map" {
                $V_boxed value = $self.get($key);
                if (value != null) {
                    return value;
                }
                return $V_nulled;
        //             ^^^^^^^^^
        }

Callables
---------

callables remain untouched and partially undefined.
- fixed type signatures?
- need syntax for custom type signatures?
- an easy syntax to convert instance methods to callables (bound methods)

Reflection
----------

we lost reflection on the way, do we need it at all if we support Callables

Native code
-----------

Current IR for native code can be simplified to the way that frontend
uses it.

As soon as frontend starts emitting only mixed-bag `ir.NativeBlock` we
can get rid of `ir.TemplateContext` and `ir.TemplateText`

Native Type Expression
----------------------

Native type expressions are currently (ab)using `ir.NativeBlock`.
Consider adding a separate ir node that is more explicit.

Code Documentation
------------------

frontend does not handle `@Doc` quark annotations yet

backend generates `ir.Doc` annotations for all targets but with no
real support for target-specific markup. Each target has some own
documentation markup to help render formatting, code references and
similar. Currently only `<` and `>` are escaped for javadoc.


Target specific markup could be generated if some kind of markup is
defined and parsed from quark documentation strings and suitable IR
defined for it. Frontend needs to be involved in this process as it
needs to at minimum translate quark symbol references to IR references

For example:

    @Doc("""Constructs a :class:`Foo` with all the bling""")
    Foo dazzling() { ... }

Could generate a potenital IR:

    Doc("""Constructs a """, ClassType(Ref("pkg:pgk.module.Foo")),
        " with all the bling)(
      Function(Name(....


Which could then generate java with javadoc:

    ```java
    /**
     * Constructs a {@link pkg.module.Foo} with all the bling
     */
    Foo dazzling() { ...
    ```

And python with sphinx docs:

    ```python
    def dazzling():
        """Constructs a :py:class:`pkg.module.Foo` with all the bling"""
        ...
    ```

Sourcemaps
----------

The plan for sourcemaps is to use the IR annotation facility to attach
the data to the IR. As the TR tree is also based on `tree` module it
can also be annotated with cross-references to the IR tree and the
`emit_format` can provide final line numbers to compute the
complete sourcemap information.


no plan yet where to store the sourcemaps and how to use it.


One idea for example for python was to provide an opt-in
`sys.excepthook` that the user could install to decode quark-part of
the stacktrace to point at quark source code.


Sourcemaps should be able to annotate the native code, too.
