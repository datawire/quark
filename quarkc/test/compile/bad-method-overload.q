interface Base {
    void foo(String arg) {}
}

class Derived extends Base {
    void foo(Error arg) {} // xfail this compiles even though signatures don't match. Java doesn't like it because Derived is abstract
}
