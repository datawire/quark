quark *;
import quark.test;

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
        checkEqual(expectedParents, reflect.Class.get(name).parents);
    }

    void testClassParents() {
        checkClassParents("complex.A", [reflect.Class.OBJECT]);
        checkClassParents("complex.B", [reflect.Class.get("complex.A")]);
        checkClassParents("complex.D", [reflect.Class.get("complex.B"),
                                        reflect.Class.get("complex.E")]);
    }

    void testClassParentsIgnoredThings() {
        // Interfaces, abstract classes, templatized classes are all ignored
        checkClassParents("complex.F", [reflect.Class.get("complex.A")]);
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
}
