class C {
    C(int x, float f, String s) {}
}

class D {}

int f(int x, float f, String s) {
    return x;
}

void main() {
    f("1", "3.14159", 3);
    f();
    new C("1", "3.14159", 3);
    new C();
    new D("asdf");
}
