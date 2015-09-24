public class Functions {
    public static Integer factorial(Integer n) {
        if ((n).equals(0)) {
            return 1;
        } else {
            return (n) * (Functions.factorial((n) - (1)));
        }
    }
    public static void main() {
        System.out.println(Functions.factorial(1));
        System.out.println(Functions.factorial(2));
        System.out.println(Functions.factorial(3));
        System.out.println(Functions.factorial(4));
        System.out.println(Functions.factorial(5));
        System.out.println(Functions.factorial(6));
        System.out.println(Functions.factorial(7));
        System.out.println(Functions.factorial(8));
        System.out.println(Functions.factorial(9));
        System.out.println(Functions.factorial(10));
    }
    public static void main(String[] args) {
        main();
    }
}