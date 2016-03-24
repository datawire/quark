package matrix;

public class Functions {

    static matrix_md.Root root = new matrix_md.Root();


    public static void main() {
        Matrix<Integer> matrix = new Matrix<Integer>(3, 3);
        (matrix).__set__(2, 2, 123);
        do{System.out.println((matrix).__get__(2, 2));System.out.flush();}while(false);
    }
}
