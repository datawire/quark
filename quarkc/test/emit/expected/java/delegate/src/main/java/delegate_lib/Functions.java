package delegate_lib;

public class Functions {
    public static void main() {
        Test t = new Test();
        (t).foo("one", "two", 3);
        do{System.out.println(((t).hello(new Ping())).toString());System.out.flush();}while(false);
    }
}
