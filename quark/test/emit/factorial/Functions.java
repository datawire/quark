public class Functions {
    public static int factorial(int n) {
        if ((n) == (0)) {
            return 1;
        } else {
            return (n) * (factorial((n) - (1)));
        }
    }
    public static void main() {
        System.out.println(factorial(1));
        System.out.println(factorial(2));
        System.out.println(factorial(3));
        System.out.println(factorial(4));
        System.out.println(factorial(5));
        System.out.println(factorial(6));
        System.out.println(factorial(7));
        System.out.println(factorial(8));
        System.out.println(factorial(9));
        System.out.println(factorial(10));
    }
    public static void main(String[] args) {
        main();
    }
}