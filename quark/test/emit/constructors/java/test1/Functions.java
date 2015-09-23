package test1;

public class Functions {
    public static void go() {
        Test t = new Test();
        System.out.println((t).name);
        System.out.println((new Test()).name);
    }
}