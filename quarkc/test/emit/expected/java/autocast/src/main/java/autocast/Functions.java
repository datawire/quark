package autocast;

public class Functions {

    static autocast_md.Root root = new autocast_md.Root();


    public static void foo(String s) {
        do{System.out.println(s);System.out.flush();}while(false);
    }


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        Object o = "Hello World!";
        String s = (String) (o);
        String s2;
        s2 = (String) (o);
        Functions.foo((String) (o));
    }
}
