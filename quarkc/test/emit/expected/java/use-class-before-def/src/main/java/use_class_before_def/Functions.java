package use_class_before_def;

public class Functions {
    public static void main() {
        pkg.Bar bar = new pkg.Bar();
        (bar).go();
    }
}
