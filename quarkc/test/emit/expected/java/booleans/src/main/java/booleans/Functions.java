package booleans;

public class Functions {

    static booleans_md.Root root = new booleans_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        if (true) {
            do{System.out.println("Hi!");System.out.flush();}while(false);
        }
        Boolean b = (1) > (0);
        if (b) {
            do{System.out.println("Hey!");System.out.flush();}while(false);
        }
        Boolean c = false;
        if (!(c)) {
            do{System.out.println("Ho!");System.out.flush();}while(false);
        }
        Integer count = 0;
        while (true) {
            if ((count) > (3)) {
                break;
            }
            count = (count) + (1);
        }
        Boolean troo = (true) && (true);
        do{System.out.println((troo).toString());System.out.flush();}while(false);
        Boolean fols = (false) || (false);
        do{System.out.println((fols).toString());System.out.flush();}while(false);
        String foo = "foo";
        String bar = "bar";
        if (((foo)==("foo") || ((Object)(foo) != null && ((Object) (foo)).equals("foo"))) && ((bar)==("bar") || ((Object)(bar) != null && ((Object) (bar)).equals("bar")))) {
            do{System.out.println("foobar!!");System.out.flush();}while(false);
        }
    }
}
