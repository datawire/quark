package simple_math_lib;

public class Functions {
    public static void main() {
        Integer four = (2) + (2);
        do{System.out.println(Integer.toString(four));System.out.flush();}while(false);
        Integer half = ~((~(1)) / (2));
        do{System.out.println(Integer.toString(half));System.out.flush();}while(false);
        Double num = 314.0;
        Double den = 100.0;
        Double pi = (num) / (den);
        do{System.out.println(Double.toString(pi));System.out.flush();}while(false);
        Double pie = 3.14;
        do{System.out.println(Double.toString(pie));System.out.flush();}while(false);
        Integer n = ~((~(-(100))) / (3));
        do{System.out.println(Integer.toString(n));System.out.flush();}while(false);
        Integer m = ~((~(100)) / (-(3)));
        do{System.out.println(Integer.toString(m));System.out.flush();}while(false);
        Integer l = io.datawire.quark.runtime.Builtins.modulo((100), (3));
        do{System.out.println(Integer.toString(l));System.out.flush();}while(false);
        Integer k = io.datawire.quark.runtime.Builtins.modulo((-(100)), (3));
        do{System.out.println(Integer.toString(k));System.out.flush();}while(false);
    }
}
