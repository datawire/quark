namespace p {
    class C {
        void f(int a, int b, int c) {
            x = a;
            reallyreally_nonexistent(a, b, c, d);
        }
    }
}

void test() {
     p.D d = new p.D();
}
