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
}

class ClassReflectTest {

    bool checkClassParents(String name, List<Class> expectedParents) {
        return checkEqual(expectedParents, reflect.Class.get(name).parents);
    }

    void testClassParents() {
        checkClassParents("complex.A", [reflect.Class.OBJECT]);
        checkClassParents("complex.B", [reflect.Class.get("complex.A")]);
        checkClassParents("complex.D", [reflect.Class.get("complex.B"),
                                        reflect.Class.get("complex.E")]);
    }
}
