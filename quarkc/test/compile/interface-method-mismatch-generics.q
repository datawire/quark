quark *;

interface I {
    void willMismatch(List<String> x);
    void willMatch(List<String> x);
}

class C extends I {
    // wrong type:
    void willMismatch(List<int> x) {}
    void willMatch(List<String> x) {}
}
