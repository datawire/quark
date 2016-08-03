quark *;

interface I {
    void willMismatch(String x);
    int willMismatch2(String x);
    String willMatch(String x);
}

class C extends I {
    // y has different type:
    String willMismatch(String x);
    String willMismatch2(String x);
    String willMatch(String x);
}
