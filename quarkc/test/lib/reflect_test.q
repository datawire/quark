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

    class F extends AbstractClass, MyInterface, A, List<String> {
        void subclass() {
            1 + 1;
        }
    }
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

    void testClassParentsAbstractAndInterfaceIgnored() {
        checkClassParents("complex.F", [reflect.Class.get("complex.A")]);
    }

    void testIsSubclassOf() {
        Class AClass = reflect.Class.get("complex.A");
        Class BClass = reflect.Class.get("complex.B");
        Class CClass = reflect.Class.get("complex.C");
        Class DClass = reflect.Class.get("complex.D");
        Class EClass = reflect.Class.get("complex.E");
        // Class:
        checkEqual(true, AClass.isSubclassOf(AClass));
        checkEqual(false, AClass.isSubclassOf(BClass));
        // Superclass:
        checkEqual(true, BClass.isSubclassOf(AClass));
        checkEqual(true, BClass.isSubclassOf(BClass));
        checkEqual(false, BClass.isSubclassOf(CClass));
        checkEqual(false, BClass.isSubclassOf(EClass));
        // Supersuperclass:
        checkEqual(true, CClass.isSubclassOf(AClass));
        checkEqual(true, CClass.isSubclassOf(BClass));
        checkEqual(true, CClass.isSubclassOf(CClass));
        checkEqual(false, CClass.isSubclassOf(EClass));
        // Two base classes:
        checkEqual(true, DClass.isSubclassOf(AClass));
        checkEqual(true, DClass.isSubclassOf(BClass));
        checkEqual(false, DClass.isSubclassOf(CClass));
        checkEqual(true, DClass.isSubclassOf(DClass));
        checkEqual(true, DClass.isSubclassOf(EClass));
    }

    void testHasInstance() {
        complex.A a = new complex.A();
        complex.B b = new complex.B();
        complex.C c = new complex.C();
        complex.D d = new complex.D();
        complex.E e = new complex.E();
        Class AClass = reflect.Class.get("complex.A");
        Class BClass = reflect.Class.get("complex.B");
        Class CClass = reflect.Class.get("complex.C");
        Class DClass = reflect.Class.get("complex.D");
        Class EClass = reflect.Class.get("complex.E");
        // Class:
        checkEqual(true, AClass.hasInstance(a));
        checkEqual(false, BClass.hasInstance(a));
        // Superclass:
        checkEqual(true, AClass.hasInstance(b));
        checkEqual(true, BClass.hasInstance(b));
        checkEqual(false, CClass.hasInstance(b));
        checkEqual(false, EClass.hasInstance(b));
        // Supersuperclass:
        checkEqual(true, AClass.hasInstance(c));
        checkEqual(true, BClass.hasInstance(c));
        checkEqual(true, CClass.hasInstance(c));
        checkEqual(false, EClass.hasInstance(c));
        // Two base classes:
        checkEqual(true, AClass.hasInstance(d));
        checkEqual(true, BClass.hasInstance(d));
        checkEqual(false, CClass.hasInstance(d));
        checkEqual(true, DClass.hasInstance(d));
        checkEqual(true, EClass.hasInstance(d));
    }
}
