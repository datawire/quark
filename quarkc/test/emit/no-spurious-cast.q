class A {}

class B extends A {}

class X<T> {}

class Y extends X<int> {}

void main() {
    A a = new B();
    X<int> x = new Y();
}
