public class Functions {
    public static void main() {
        Matrix<Integer> matrix = new Matrix<Integer>(3, 3);
        (matrix).__set__(2, 2, 123);
        System.out.println((matrix).__get__(2, 2));
    }
    public static void main(String[] args) {
        main();
    }
}