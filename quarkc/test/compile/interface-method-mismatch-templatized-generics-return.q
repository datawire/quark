quark *;

interface I<T> {
    List<T> willMismatch(String x);
    List<T> willMismatch2(String x);
    List<T> willMatch(String x);
}

class C extends I<String> {
    // wrong return type:
    List<int> willMismatch(String x) {}
    void willMismatch2(String x) {}
    List<String> willMatch(String x) {}
}
