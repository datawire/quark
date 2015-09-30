class Test {}

void test() {
    Test t = new Test();
    int x = t.nonexistent;
    int y = t.nosuchmethod();
    int z = t[0];
    t[0] = z;
}
