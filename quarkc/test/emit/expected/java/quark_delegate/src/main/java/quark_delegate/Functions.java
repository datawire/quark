package quark_delegate;

public class Functions {

    static quark_delegate_md.Root root = new quark_delegate_md.Root();


    public static void main() {
        Test t = new Test();
        (t).foo("one", "two", 3);
        do{System.out.println(((t).hello(new Ping())).toString());System.out.flush();}while(false);
    }
}
