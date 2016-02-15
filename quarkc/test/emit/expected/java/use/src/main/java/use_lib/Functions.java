package use_lib;

public class Functions {
    public static void main() {
        do{System.out.println(testlib.Functions.test());System.out.flush();}while(false);
        do{System.out.println(testlib.Functions.foo());System.out.flush();}while(false);
        do{System.out.println(testlib.Functions.foo());System.out.flush();}while(false);
        t2.Functions.test();
        do{System.out.println(Functions.qux());System.out.flush();}while(false);
    }


    public static String qux() {
        return "moo";
    }
}
