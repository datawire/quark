quark 0.6.100;
void test_modulo(int a, int b) {
    print(a.toString() + " % " + b.toString() + " = " + (a%b).toString());
}

void main(List<String> args) {
    test_modulo( 4,  3);
    test_modulo( 4, -3);
    test_modulo(-4,  3);
    test_modulo(-4, -3);
}
