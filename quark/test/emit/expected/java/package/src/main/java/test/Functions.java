package test;

public class Functions {
    public static void go() {
        do{System.out.println("GO!");System.out.flush();}while(false);
    }


    public static void main() {
        Functions.go();
        test.test.Functions.go();
        Test t1 = new Test();
        test.test.Test t2 = new test.test.Test();
        (t1).go();
        (t2).go();
    }
}
