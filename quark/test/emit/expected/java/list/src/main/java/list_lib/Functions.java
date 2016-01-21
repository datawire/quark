package list_lib;

public class Functions {
    public static void test1() {
        java.util.ArrayList<Integer> list = new java.util.ArrayList<Integer>();
        (list).add(1);
        (list).add(2);
        (list).add(3);
        do{System.out.println((list).get(0));System.out.flush();}while(false);
        do{System.out.println((list).get(1));System.out.flush();}while(false);
        do{System.out.println((list).get(2));System.out.flush();}while(false);
    }


    public static void test2() {
        java.util.ArrayList<String> list = new java.util.ArrayList<String>();
        (list).add("one");
        (list).add("two");
        (list).add("three");
        do{System.out.println((list).get(0));System.out.flush();}while(false);
        do{System.out.println((list).get(1));System.out.flush();}while(false);
        do{System.out.println((list).get(2));System.out.flush();}while(false);
    }


    public static void test3() {
        java.util.ArrayList<Integer> list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        do{System.out.println(list);System.out.flush();}while(false);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{1}));
        do{System.out.println(list);System.out.flush();}while(false);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{1, 2, 3}));
        do{System.out.println(list);System.out.flush();}while(false);
    }


    public static void test4() {
        java.util.ArrayList<String> list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        do{System.out.println(list);System.out.flush();}while(false);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"one"}));
        do{System.out.println(list);System.out.flush();}while(false);
        list = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"one", "two", "three"}));
        do{System.out.println(list);System.out.flush();}while(false);
    }


    public static void test5() {
        java.util.ArrayList<Box<Integer>> boxes = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{}));
        (boxes).add(new Box<Integer>());
        ((boxes).get(0)).set(3);
        do{System.out.println(((boxes).get(0)).get());System.out.flush();}while(false);
        boxes = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new Box<Integer>()}));
        do{System.out.println(((boxes).get(0)).get());System.out.flush();}while(false);
    }


    public static void test6() {
        java.util.ArrayList<java.util.ArrayList<Integer>> matrix = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{new java.util.ArrayList(java.util.Arrays.asList(new Object[]{1, 2, 3})), new java.util.ArrayList(java.util.Arrays.asList(new Object[]{4, 5, 6})), new java.util.ArrayList(java.util.Arrays.asList(new Object[]{7, 8, 9}))}));
        do{System.out.println(matrix);System.out.flush();}while(false);
    }


    public static void main() {
        Functions.test1();
        Functions.test2();
        Functions.test3();
        Functions.test4();
        Functions.test5();
        Functions.test6();
    }
}
