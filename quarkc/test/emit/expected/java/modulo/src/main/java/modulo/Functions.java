package modulo;

public class Functions {
    public static void test_modulo(Integer a, Integer b) {
        do{System.out.println(((((Integer.toString(a)) + (" % ")) + (Integer.toString(b))) + (" = ")) + (Integer.toString(io.datawire.quark.runtime.Builtins.modulo((a), (b)))));System.out.flush();}while(false);
    }


    public static void main() {
        Functions.test_modulo(4, 3);
        Functions.test_modulo(4, -(3));
        Functions.test_modulo(-(4), 3);
        Functions.test_modulo(-(4), -(3));
    }
}
