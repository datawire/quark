package use_class_before_def;

public class Functions {

    static use_class_before_def_md.Root root = new use_class_before_def_md.Root();


    public static void main() {
        pkg.Bar bar = new pkg.Bar();
        (bar).go();
    }
}
