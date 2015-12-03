public class Functions {


    public static void main() {
        pkg.StringBox box = new pkg.StringBox("asdf");
        System.out.println((box).contents);
        pkg.StringFoo foo = new pkg.StringFoo();
        System.out.println((foo).foo());
    }
    public static void main(String[] args) {
        main();
    }
}
