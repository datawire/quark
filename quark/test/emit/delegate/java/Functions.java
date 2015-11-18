public class Functions {
    public static void main() {
        Test t = new Test();
        (t).foo("one", "two", 3);
        System.out.println(((t).hello(new Ping())).toString());
    }
    public static void main(String[] args) {
        main();
    }
}