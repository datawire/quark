
class Foo {

    bool __eq__(Foo other) {
        return false;
    }

    bool __ne__(Foo other) {
        return !(self == other);
    }
}

void usenull() {
    Foo foo = null;
    assertEqual(null, foo);
    foo = new Foo();
    assertEqual(true, foo != null);
}
