package test2;

public class Functions {

    static constructors_md.Root root = new constructors_md.Root();


    public static void go() {
        Test t = new Test("Hello World!!");
        do{System.out.println((t).name);System.out.flush();}while(false);
        do{System.out.println((new Test("Hello World!!")).name);System.out.flush();}while(false);
    }
}
