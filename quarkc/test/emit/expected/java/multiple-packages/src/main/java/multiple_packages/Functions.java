package multiple_packages;

public class Functions {

    static multiple_packages_md.Root root = new multiple_packages_md.Root();


    public static void main() {
        p1.p2.Functions.a();
        p1.p2.Functions.b();
        p1.Functions.c();
        p1.Functions.d();
    }
}
