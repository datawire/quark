public class Functions {
    public static void test1() {
        java.util.ArrayList<Integer> list = new java.util.ArrayList<Integer>();
        (list).add(1);
        (list).add(2);
        (list).add(3);
        System.out.println((list).get(0));
        System.out.println((list).get(1));
        System.out.println((list).get(2));
    }
    public static void test2() {
        java.util.ArrayList<String> list = new java.util.ArrayList<String>();
        (list).add("one");
        (list).add("two");
        (list).add("three");
        System.out.println((list).get(0));
        System.out.println((list).get(1));
        System.out.println((list).get(2));
    }
    public static void main() {
        test1();
        test2();
    }
    public static void main(String[] args) {
        main();
    }
}