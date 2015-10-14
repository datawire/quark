public class Functions {
    public static void main() {
        Integer four = (Integer) ((2) + (2));
        System.out.println(Integer.toString(four));
        Integer half = ~((~(1)) / (2));
        System.out.println(Integer.toString(half));
        Double num = (Double) (314.0);
        Double den = (Double) (100.0);
        Double pi = (num) / (den);
        System.out.println(Double.toString(pi));
        Double pie = (Double) (3.14);
        System.out.println(Double.toString(pie));
        Integer n = ~((~(-(100))) / (3));
        System.out.println(Integer.toString(n));
        Integer m = ~((~(100)) / (-(3)));
        System.out.println(Integer.toString(m));
        Integer l = Math.floorMod((100), (3));
        System.out.println(Integer.toString(l));
        Integer k = Math.floorMod((-(100)), (3));
        System.out.println(Integer.toString(k));
    }
    public static void main(String[] args) {
        main();
    }
}