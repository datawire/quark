class A {
    void foo() {
        print("A");
    }
}

class B extends A {
    void foo() {
        print("B");
    }
}

class C extends A {}

void main(List<String> args) {
    A a = new A();
    a.foo();
    B b = new B();
    b.foo();
    C c = new C();
    c.foo();

    print("--");

    a = b;
    a.foo();
    a = c;
    a.foo();
}
