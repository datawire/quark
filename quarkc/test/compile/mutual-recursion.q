quark 0.6.100;
int foo() {
    bar();
    return 3;
}

String bar() {
    foo();
    return "pi";
}
