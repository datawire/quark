package multiple_packages;

public class Functions {

    static multiple_packages_md.Root root = new multiple_packages_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        p1.p2.Functions.a();
        p1.p2.Functions.b();
        p1.Functions.c();
        p1.Functions.d();
    }
}
