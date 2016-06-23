quark *;

import quark.test;

namespace local {
    interface I {
        void f();
    }

    class C extends I {
        void f() {}
    }

    class D extends C {
    }
}

class CastingTest {
    // An instance can be cast to its class
    void testCastingToClass() {
        local.C c = new local.C();
        local.C c2 = ?c;
        checkEqual(c, c2);
    }

    // An instance can be cast to an interface implemented by the class
    void testCastingToInterface() {
        local.C c = new local.C();
        local.I asInterface = ?c;
        checkEqual(c, asInterface);
    }

    // An instance can be cast to an interface implemented by the class, via
    // casting to Object
    void testCastingToInterfaceViaObject() {
        local.C c = new local.C();
        Object asObject = ?c;
        local.I asInterfaceFromObject = ?asObject;
        checkEqual(c, asInterfaceFromObject);
    }

    // An instance can be cast to a superclass
    void testCastingToSuperclass() {
        local.D d = new local.D();
        local.C asSuper = ?d;
        checkEqual(d, asSuper);
    }

    // An instance can be cast to a superclass, via casting to Object
    void testCastingToSuperclassViaObject() {
        local.D d = new local.D();
        Object asObject = ?d;
        local.C asSuperFromObject = ?asObject;
        checkEqual(d, asSuperFromObject);
    }
}

void main(List<String> args) {
    test.run(args);
}
