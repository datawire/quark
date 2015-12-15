package test1;

public class Functions {
    public static void go() {
        Test t = new Test();
        do{System.out.println((t).name);System.out.flush();}while(false);
        do{System.out.println((new Test()).name);System.out.flush();}while(false);
    }
}
