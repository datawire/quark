
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
