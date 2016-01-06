## Reflection Design

The quark compiler generates metadata for user defined
constructs. This metadata is accessible via a reflection API. The
reflection API is in the "reflect" namespace.

### Reflection API

                       parameters (ordered list of type parameters)
                   +------------------+
                   |                  |
                  \|/n                | 
          +------------+              |
          | Class      |--------------+
          |  +id       |
          |  +name     | 1
          |            |
          |            | n   parameters (ordered list of method parameters)
          |            |<-------------------------+
        1 |            |                          |
      +-->|            | 1   type (of field)      |
      |   |            |<-------------+           |
      |   +------------+              |           |
      |     |      |                  |           |
      |     |     \|/n                |           |
      |     |    +------------+       |           |     
      |     |    | Field      |-------+           |
      |     |    |  +name     |                   |
      |     |    +------------+                   |
      |     |                                     |
      |     |                                     |
      |     |  n +------------+                   |
      |     +--->| Method     |-------------------+
      |          |  +name     |
      |          +------------+
      |            |
      +------------+
         type (return type of method)

### Class ids

Every instance of a Class has an id. This is identical to the quark
notation for a type, however spaces are not allowed and fully
qualified names are always used.

Class ids are of the following form:

    id = [ namespace "." ]+ classname [ "<" id ["," id]* ">" ]

Examples:

    int
    List
    List<int>
    foo.bar.Baz
    List<foo.bar.Baz>
    foo.bar.Baz<foo.Moo,foo.Arf>
    Map<int,foo.bar.Baz>

### Global Metadata Root

There is a global metadata root stored as a static member of the
reflect.Class class. This global root maps from type id to an instance
of reflect.Class that describes the given type. The
reflect.Class.get(String id) singleton can be used to access the Class
metadata for a given type.

Examples:

    reflect.Class str = reflect.Class.get("String");
    reflect.Class pet = reflect.Class.get("petshop.Pet");
    reflect.Class petlist = reflect.Class.get("List<petshop.Pet>");

### Loading Class Metadata

In order to avoid issues with circular references between static
initializers, the implementation of the Reflection API does not
contain pointers directly to other Class metadata objects, but instead
the Class, Field and Method classes contained the relevant ids and
lookup/return the appropriate classes via the global metadata
root.

This lookup step means there is a possibility that the class being
looked up is not yet loaded. In order to ensure that this never
occurs, each compilation unit gets its own metadata root consisting of
a static class (e.g. petshop_md.Root) that contains references to all
metadata within the compilation unit. Each actual class is then
augmented with a static reference to its metadata within this root
(e.g. petshop.Pet.petshop_Pet_ref ->
petshop_md.Root.petshop_Pet_md). This guarantees that as soon as any
quark class within a given compilation unit is initialized, all of the
metadata for that compilation unit is loaded.
