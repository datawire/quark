package quark_delegate;

public class Functions {

    static quark_delegate_md.Root root = new quark_delegate_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        Test t = new Test();
        (t).foo("one", "two", 3);
        do{System.out.println(((t).hello(new Ping())).toString());System.out.flush();}while(false);
    }
}
