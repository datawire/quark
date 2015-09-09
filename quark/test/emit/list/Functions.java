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
    public static void test3() {
        java.util.ArrayList<Integer> list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        System.out.println(list);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{1}));
        System.out.println(list);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{1, 2, 3}));
        System.out.println(list);
    }
    public static void test4() {
        java.util.ArrayList<String> list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        System.out.println(list);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"one"}));
        System.out.println(list);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"one", "two", "three"}));
        System.out.println(list);
    }
    public static void test5() {
        java.util.ArrayList<Box<Integer>> boxes = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (boxes).add(new Box<Integer>());
        ((boxes).get(0)).set(3);
        System.out.println(((boxes).get(0)).get());
        boxes = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Box<Integer>()}));
        System.out.println(((boxes).get(0)).get());
    }
    public static void test6() {
        java.util.ArrayList<java.util.ArrayList<Integer>> matrix = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new java.util.ArrayList(java.util.Arrays.asList(new Object[]{1, 2, 3})), new java.util.ArrayList(java.util.Arrays.asList(new Object[]{4, 5, 6})), new java.util.ArrayList(java.util.Arrays.asList(new Object[]{7, 8, 9}))}));
        System.out.println(matrix);
    }
    public static void main() {
        test1();
        test2();
        test3();
        test4();
        test5();
        test6();
    }
    public static void main(String[] args) {
        main();
    }
}