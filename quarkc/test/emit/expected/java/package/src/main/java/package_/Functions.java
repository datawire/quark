package package_;

public class Functions {

    static package_md.Root root = new package_md.Root();


    public static void main() {
        test.Functions.go();
        test.test.Functions.go();
        test.Test t1 = new test.Test();
        test.test.Test t2 = new test.test.Test();
        (t1).go();
        (t2).go();
    }
}
