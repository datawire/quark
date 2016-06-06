The Problem
===========

Namespaces may have circular dependencies between them. This is
another example of how a single namespace cannot map to a single file
on all backends. In particular, on dynamic backends such as python,
where definitions are created by running code, we need to ensure that
the "definition creation code" (i.e. class definitions) runs in an
order that accomodates the dependencies between those definitions,
regardless of how they are distributed amongst namespaces.

For example, both the circular and nested namespace definitions below
currently break on python targets.

Circular namespaces example:

    namespace a {

       class Base {}

       class Derived extends b.Base {}

    }

    namespace b {

        class Base {}

        class Derived extends a.Base {}

    }

Nested namespaces example:

    namespace top {

        class Base {}

        namespace inner {
            class Derived extends Base {}
        }

    }

Proposals
---------

On dynamic backends we basically need to toposort definitions based on
dependencies between them in order to ensure that they run in the
correct order. For backends like python where namespaces and execution
order are coupled together, we will need to create artificial
namespaces for running the code in the appropriate order and then map
these into the desired namespaces.

This can be done much more simply than it sounds, and in fact we can
avoid doing the toposort ourselves by simply putting each class
definition into its own file, importing/including/requiring as needed
between definitions, and then depending on the target language
import/include/require system to recursively load-exactly-once as
needed. This will result in a toposorted execution order for all
definition code.
