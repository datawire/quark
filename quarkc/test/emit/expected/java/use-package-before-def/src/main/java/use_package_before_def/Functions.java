package use_package_before_def;

public class Functions {

    static use_package_before_def_md.Root root = new use_package_before_def_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        test.Functions.go();
    }
}
