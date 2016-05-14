int foo() {
    bar();
    return 3;
}

String bar() {
    foo();
    return "pi";
}
