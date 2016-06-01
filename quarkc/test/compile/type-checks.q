quark 0.6.100;
class C {
    C(int x, float f, String s) {}
}

class D {}

int f(int x, float f, String s) {
    return x;
}

C g() {
    return new D();
}

void h() {
    return 3;
}

int i() {
    return;
}

class E {
    E() {
        return "hah";
    }
}

void main() {
    f("1", "3.14159", 3);
    f();
    new C("1", "3.14159", 3);
    new C();
    new D("asdf");
    Object o = "asdf";
    String s = o;
    String s2;
    s2 = o;
}
