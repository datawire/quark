
class X {

    String field;
    X(String s) {
        field = s;
    }

}

class Y {

    String prop;

    Y(String s) {
        prop = s;
    }

    X to_conversion_X() {
        return new X(prop);
    }
}

void test() {
    X x = new Y("A");
    assertEqual("A", x.field);
}

void testint() {
    Any a = 3;
    assertEqual(3, a);
    a = 2;
    assertEqual(2, a);
}

void testString() {
    Any a = "pi";
    assertEqual("pi", a);
    a = "pie";
    assertEqual("pie", a);
}
