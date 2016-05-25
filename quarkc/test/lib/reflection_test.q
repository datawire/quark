
import quark.test;

import quark.reflect;

void main(List<String> args) {
    test.run(args);
}

class ReflectionTest {

    void test_Object() {
        checkThereIsA("quark.Object", new Object());
    }
    void test_String() {
        checkThereIsA("quark.String", "foo");
    }
    void test_Map() {
        checkThereIsA("quark.Map<quark.Object,quark.Object>", new Map<Object,Object>());
    }
    void test_List() {
        checkThereIsA("quark.List<quark.Object>", new List<Object>());
    }
    void test_int() {
        checkThereIsA("quark.int", 42);
    }
    void test_float() {
        checkThereIsA("quark.float", 4.2);
    }
    void test_bool() {
        checkThereIsA("quark.bool", ((1+1)==2));
    }
    void checkThereIsA(String klazz, Object specimen) {
        Class k = Class.get(klazz);
        check(k != null, "Cannot find " + klazz);
        if (k != null) {
            checkEqual(klazz, k.getId());
        }
        Class a = specimen.getClass();
        check(a != null, "Specimen of " + klazz + " has no class?");
        if (a != null && k != null) {
            checkEqual(k.getId(), a.getId());
        }
    }
}
