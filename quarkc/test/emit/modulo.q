void test_modulo(int a, int b) {
    print(a.toString() + " % " + b.toString() + " = " + (a%b).toString());
}

void main() {
    test_modulo( 4,  3);
    test_modulo( 4, -3);
    test_modulo(-4,  3);
    test_modulo(-4, -3);
}
