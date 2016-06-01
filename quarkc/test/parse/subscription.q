quark 0.6.100;
void test() {
    x[0] = 0;
    x[0];

    x.y[0] = 0;
    x.y[0];

    x.y().z[0] = 0;
    x.y().z[0];
}
