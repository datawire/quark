quark *;
class Native {
    macro Native add(Native other) ${$self$other};
    void test() {
        Native n1 = Native();
        Native n2 = Native();
        Native n1n2 = Native();
        Native n3 = n1.add(n2);
    }
}
