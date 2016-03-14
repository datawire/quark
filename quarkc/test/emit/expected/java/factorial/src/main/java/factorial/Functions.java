package factorial;

public class Functions {

    static factorial_md.Root root = new factorial_md.Root();


    public static Integer factorial(Integer n) {
        if ((n)==(0) || ((n) != null && (n).equals(0))) {
            return 1;
        } else {
            return (n) * (Functions.factorial((n) - (1)));
        }
    }


    public static void main() {
        do{System.out.println(Functions.factorial(1));System.out.flush();}while(false);
        do{System.out.println(Functions.factorial(2));System.out.flush();}while(false);
        do{System.out.println(Functions.factorial(3));System.out.flush();}while(false);
        do{System.out.println(Functions.factorial(4));System.out.flush();}while(false);
        do{System.out.println(Functions.factorial(5));System.out.flush();}while(false);
        do{System.out.println(Functions.factorial(6));System.out.flush();}while(false);
        do{System.out.println(Functions.factorial(7));System.out.flush();}while(false);
        do{System.out.println(Functions.factorial(8));System.out.flush();}while(false);
        do{System.out.println(Functions.factorial(9));System.out.flush();}while(false);
        do{System.out.println(Functions.factorial(10));System.out.flush();}while(false);
    }
}
