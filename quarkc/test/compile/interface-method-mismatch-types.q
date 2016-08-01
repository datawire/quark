quark *;

interface I {
    void willMismatch(String x, int y);
    void willMatch(String x, int y);
}

class C extends I {
    // y has different type:
    void willMismatch(String x, String y) {}
    void willMatch(String x, int y);
}
