package modulo;

public class Functions {

    static modulo_md.Root root = new modulo_md.Root();


    public static void test_modulo(Integer a, Integer b) {
        do{System.out.println(((((Integer.toString(a)) + (" % ")) + (Integer.toString(b))) + (" = ")) + (Integer.toString(io.datawire.quark.runtime.Builtins.modulo((a), (b)))));System.out.flush();}while(false);
    }


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        Functions.test_modulo(4, 3);
        Functions.test_modulo(4, -(3));
        Functions.test_modulo(-(4), 3);
        Functions.test_modulo(-(4), -(3));
    }
}
