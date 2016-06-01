quark 0.6.100;
macro int pi() 3;

void test() {
    int x = pi();
}

class Pie {
    macro int slice() 3;
    void test() {
        Pie p = Pie();
        int x = p.slice();
    }
}
