// XXX: this test fails for go if Foo doesn't have a field
class Foo extends Object {
    String blah;

    Any to_quark_Any() {
        return unsafe(self);
    }

    // XXX: this fails on python because __eq__ has meaning there
    bool __eq__(Object other) {
        Foo ofoo = ?other;
        return self.blah == ofoo.blah;
    }
}

void test_identity() {
    Foo foo = new Foo();
    foo.blah = "blah";
    assertEqual(foo, foo);
    //    assertNotEqual(new Foo(), new Foo());

    Foo foodup = new Foo();
    foodup.blah = "blah";

    Foo bar = new Foo();
    bar.blah = "bleh";

    Any a = foo;
    assertEqual(foo, a);

    Any b = null;
    assertEqual(null, b);

    int x = null.asInt();
    assertEqual(0, x);

    List<Foo> l1 = [foo];
    List<int> l2 = [1];
    assertEqual(true, l1 == l1);
    assertEqual(true, unsafe(l1) == unsafe(l1));
    assertEqual(true, l2 == l2);
    assertEqual(true, unsafe(l2) == unsafe(l2));
    assertEqual(false, unsafe(l1) == unsafe(l2));
    List<Foo> l3 = [foodup];
    List<Foo> l4 = [bar];
    assertEqual(true, l1 == l3);
    assertEqual(false, l1 == l4);
    assertEqual(false, l3 == l4);

    /*

      Option 1: Convert everything to Any in order to do __eq__.
        - objects need to be convertable to Any
        - any needs to know how to delegate to object's __eq__ hook
          + how would this work?
            - Option a:
               + cast to Equatable that has __eq__(Any o)
               + hooks would need to query/cast to known type to compare
            - Option b:
               + cast to specific type...???

      Option 2: Somehow make dispatch work when a primitive implements an interface?
        - generate a switch at the call site?
          + switch would have to detect what kind of type it is and
            then do the appropriate form of dispatch at runtime

      Option 3:
        - Runtimes need to have a "top type" that is introspectable.
        - Quark's type system has a base type ("Any++")
        - Primitives are basically syntax for functions, i.e. they enforce compile-time dispatch.
          + this is made safe by:
            1. you can't extend primitives other than Any++
            2. you can't override any of the methods on Any++

      Option 4:

        - Two level dispatch. First level is static dispatch based on
          compile time type and method name. Second level is dynamic
          dispatch, i.e. any "instance" value can be cast to a known
          interface/object type and any methods invoked.

          Two cases: Any.__static_eq__ (wants to dispatch to <instance>.__eq__)
                     Foo.__eq__?
                     <instance>.foo (just does dynamic dispatch, foo can't
                                     conflict with any method name that is
                                     statically dispatched)

          Any.__eq__(Any other) {
              switch (...) {
              ...
              case INSTANCE:
                  ??? (maybe have base quark object interface?)
              }
          }

        - Why bother with Any... could we just desugar to function calls?

     */
}
