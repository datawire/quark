quark 0.6.100;
void foo(String s) {
    print(s);
}

void main(List<String> args) {
    Object o = "Hello World!";
    String s = ?o;
    String s2;
    s2 = ?o;
    foo(?o);
}
