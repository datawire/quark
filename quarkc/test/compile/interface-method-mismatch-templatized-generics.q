quark *;

interface I<T> {
    void willMismatch(List<T> x);
    void willMatch(List<T> x);
}

class C extends I<String> {
    // wrong type:
    void willMismatch(List<int> x) {}
    void willMatch(List<String> x) {}
}
