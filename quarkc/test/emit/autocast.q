void foo(String s) {
    print(s);
}

void main() {
    Object o = "Hello World!";
    String s = ?o;
    String s2;
    s2 = ?o;
    foo(?o);
}
