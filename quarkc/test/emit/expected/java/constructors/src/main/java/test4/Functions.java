package test4;

public class Functions {

    static constructors_md.Root root = new constructors_md.Root();


    public static void go() {
        Test t = new Test();
        do{System.out.println((t).name);System.out.flush();}while(false);
        do{System.out.println((new Test()).name);System.out.flush();}while(false);
    }
}
