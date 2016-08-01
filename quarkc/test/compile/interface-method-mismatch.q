quark *;

interface I {
    void willMismatch(String x, int y);
    void willMatch(String x, int y);
}

class C extends I {
    // missing parameter:
    void willMismatch(String a) {}
    void willMatch(String x, int y);
}
