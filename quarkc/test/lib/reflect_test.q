quark *;
import quark.test;
import quark.concurrent;

void main(List<String> args) {
    test.run(args);
}

// Class heirarchy:
// A---B---C
//     \---D
//        /
//       E
namespace complex {
    class A {}

    class B extends A {}

    class C extends B {}

    class E {}
    class D extends B, E {}

    class AbstractClass {
        void subclass();
    }

    interface MyInterface {
    }

    class F extends AbstractClass, A {
        void subclass() {
            int x = 1 + 1;
        }
    }

    class G extends MyInterface, A {}

    class X<T> {}

    class I extends X<String>, A {}
}

class ClassReflectTest {

    void checkClassParents(String name, List<Class> expectedParents) {
        checkEqual(expectedParents, reflect.Class.get(name).getParents());
    }

    void testClassParents() {
        checkClassParents("complex.A", [reflect.Class.OBJECT]);
        checkClassParents("complex.B", [reflect.Class.get("complex.A")]);
        checkClassParents("complex.D", [reflect.Class.get("complex.B"),
                                        reflect.Class.get("complex.E")]);
    }

    void testClassParentsIgnoredThings() {
        // Interfaces, abstract classes, templatized classes are all ignored
        checkClassParents("complex.F", [reflect.Class.get("complex.AbstractClass"), reflect.Class.get("complex.A")]);
        checkClassParents("complex.G", [reflect.Class.get("complex.A")]);
        checkClassParents("complex.I", [reflect.Class.get("complex.A")]);
    }

    void testIsSubclassOf() {
        Class aClass = reflect.Class.get("complex.A");
        Class bClass = reflect.Class.get("complex.B");
        Class cClass = reflect.Class.get("complex.C");
        Class dClass = reflect.Class.get("complex.D");
        Class eClass = reflect.Class.get("complex.E");
        // Class:
        checkEqual(true, aClass.isSubclassOf(aClass));
        checkEqual(false, aClass.isSubclassOf(bClass));
        // Superclass:
        checkEqual(true, bClass.isSubclassOf(aClass));
        checkEqual(true, bClass.isSubclassOf(bClass));
        checkEqual(false, bClass.isSubclassOf(cClass));
        checkEqual(false, bClass.isSubclassOf(eClass));
        // Supersuperclass:
        checkEqual(true, cClass.isSubclassOf(aClass));
        checkEqual(true, cClass.isSubclassOf(bClass));
        checkEqual(true, cClass.isSubclassOf(cClass));
        checkEqual(false, cClass.isSubclassOf(eClass));
        // Two base classes:
        checkEqual(true, dClass.isSubclassOf(aClass));
        checkEqual(true, dClass.isSubclassOf(bClass));
        checkEqual(false, dClass.isSubclassOf(cClass));
        checkEqual(true, dClass.isSubclassOf(dClass));
        checkEqual(true, dClass.isSubclassOf(eClass));
    }

    void testHasInstance() {
        complex.A a = new complex.A();
        complex.B b = new complex.B();
        complex.C c = new complex.C();
        complex.D d = new complex.D();
        complex.E e = new complex.E();
        Class aClass = reflect.Class.get("complex.A");
        Class bClass = reflect.Class.get("complex.B");
        Class cClass = reflect.Class.get("complex.C");
        Class dClass = reflect.Class.get("complex.D");
        Class eClass = reflect.Class.get("complex.E");
        // Class:
        checkEqual(true, aClass.hasInstance(a));
        checkEqual(false, bClass.hasInstance(a));
        // Superclass:
        checkEqual(true, aClass.hasInstance(b));
        checkEqual(true, bClass.hasInstance(b));
        checkEqual(false, cClass.hasInstance(b));
        checkEqual(false, eClass.hasInstance(b));
        // Supersuperclass:
        checkEqual(true, aClass.hasInstance(c));
        checkEqual(true, bClass.hasInstance(c));
        checkEqual(true, cClass.hasInstance(c));
        checkEqual(false, eClass.hasInstance(c));
        // Two base classes:
        checkEqual(true, aClass.hasInstance(d));
        checkEqual(true, bClass.hasInstance(d));
        checkEqual(false, cClass.hasInstance(d));
        checkEqual(true, dClass.hasInstance(d));
        checkEqual(true, eClass.hasInstance(d));
    }

    // Minimal sanity check to make sure getClass() doesn't blow up:
    void testGetClass() {
        Runtime runtime = Context.current().runtime();
        List<Object> values = [true, false, 1, 2.3, "s",
                               new complex.A(),
                               new List<String>(),
                               new Map<String,String>(),
                               runtime, runtime.logger("test"),
                               runtime.codec(),
                               runtime.codec().buffer(1),
                               new Lock(),
                               new Condition()
                               ];
        int idx = 0;
        while (idx < values.size()) {
            values[idx].getClass();
            idx = idx + 1;
        }
    }

    void testHasInstancePrimitives() {
        Class aClass = reflect.Class.get("complex.A");
        checkEqual(false, aClass.hasInstance(null));
        checkEqual(false, aClass.hasInstance(true));
        checkEqual(false, aClass.hasInstance(false));
        checkEqual(false, aClass.hasInstance(""));
        checkEqual(false, aClass.hasInstance(1));
        checkEqual(false, aClass.hasInstance(3.2));
        checkEqual(false, aClass.hasInstance(new List<String>()));
        checkEqual(false, aClass.hasInstance(new Map<String,String>()));
        Runtime runtime = Context.current().runtime();
        checkEqual(false, aClass.hasInstance(runtime));
        checkEqual(false, aClass.hasInstance(runtime.logger("test")));
        checkEqual(false, aClass.hasInstance(runtime.codec()));
        checkEqual(false, aClass.hasInstance(runtime.codec().buffer(1)));
        checkEqual(false, aClass.hasInstance(new Lock()));
        checkEqual(false, aClass.hasInstance(new Condition()));
    }

    // TODO: hasInstance currently doesn't support interfaces or parameterized
    // types, e.g. List<K> or YourClass<K,V>. We should add that and then write
    // tests.
}
