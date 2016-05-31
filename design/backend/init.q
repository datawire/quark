class A {
    static B foo = new B();

    A() {
        print("A");
    }
}

class B {
    static A foo = new A();

    B() {
        print("B");
    }
}

void main(List<String> args) {
    //A a = new A();
    B b = new B();
}
