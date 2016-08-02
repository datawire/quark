quark *;

interface I<T> {
    void willMismatch(T x);
    void willMatch(T x);
}

class C extends I<String> {
    // wrong type:
    void willMismatch(int x) {}
    void willMatch(String x) {}
}
