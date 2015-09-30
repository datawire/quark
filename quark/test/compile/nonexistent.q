package p {
    class C {
        void f(int a, int b, int c) {
            x = a;
            nonexistent(a, b, c, d);
        }
    }
}

void test() {
     p.D d = new p.D();
}
