package booleans_lib;

public class Functions {
    public static void main() {
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
        if (((foo)==("foo") || ((foo) != null && (foo).equals("foo"))) && ((bar)==("bar") || ((bar) != null && (bar).equals("bar")))) {
            do{System.out.println("foobar!!");System.out.flush();}while(false);
        }
    }
}
