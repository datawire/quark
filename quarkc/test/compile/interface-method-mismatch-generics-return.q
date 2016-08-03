quark *;

interface I {
    List<String> willMismatch(String x);
    List<String> willMismatch2(String x);
    List<String> willMatch(List<String> x);
}

class C extends I {
    // wrong type:
    List<int> willMismatch(String x) {}
    void willMismatch2(String x) {}
    List<String> willMatch(List<String> x) {}
}
