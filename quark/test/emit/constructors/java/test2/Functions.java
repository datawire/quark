package test2;

public class Functions {
    public static void go() {
        Test t = new Test("Hello World!!");
        System.out.println((t).name);
        System.out.println((new Test("Hello World!!")).name);
    }
}