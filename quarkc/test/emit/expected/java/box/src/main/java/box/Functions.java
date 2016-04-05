package box;

public class Functions {

    static box_md.Root root = new box_md.Root();


    public static void test1() {
        Box<Integer> ibox = new Box<Integer>();
        (ibox).set(3);
        Integer three = (ibox).get();
        do{System.out.println(three);System.out.flush();}while(false);
        (ibox).contents = 4;
        do{System.out.println((ibox).contents);System.out.flush();}while(false);
    }


    public static void test2() {
        Box<String> sbox = new Box<String>();
        (sbox).set("hello");
        String hello = (sbox).get();
        do{System.out.println(hello);System.out.flush();}while(false);
        (sbox).contents = "world";
        do{System.out.println((sbox).contents);System.out.flush();}while(false);
    }


    public static void test3() {
        Crate<Integer> icrate = new Crate<Integer>();
        (icrate).set(3);
        do{System.out.println((icrate).get());System.out.flush();}while(false);
        (icrate).set(4);
        do{System.out.println(((icrate).box).contents);System.out.flush();}while(false);
    }


    public static void test4() {
        Sack s = new Sack();
        do{System.out.println(((s).ints).get());System.out.flush();}while(false);
        do{System.out.println(((s).ints).contents);System.out.flush();}while(false);
        ((s).ints).set(3);
        do{System.out.println(((s).ints).get());System.out.flush();}while(false);
        do{System.out.println(((s).ints).contents);System.out.flush();}while(false);
        ((s).ints).contents = 4;
        do{System.out.println(((s).ints).get());System.out.flush();}while(false);
        do{System.out.println(((s).ints).contents);System.out.flush();}while(false);
    }


    public static void test5() {
        Crate<String> scrate = new Crate<String>();
        do{System.out.println((scrate).get());System.out.flush();}while(false);
        do{System.out.println(((scrate).box).contents);System.out.flush();}while(false);
        (scrate).set("hello");
        do{System.out.println((scrate).get());System.out.flush();}while(false);
        do{System.out.println(((scrate).box).contents);System.out.flush();}while(false);
        ((scrate).ibox).contents = 3;
        do{System.out.println(((scrate).ibox).contents);System.out.flush();}while(false);
    }


    public static void test6() {
        Box<Box<Integer>> box = new Box<Box<Integer>>();
        (box).set(new Box<Integer>());
        ((box).get()).set(3);
        do{System.out.println(((box).get()).get());System.out.flush();}while(false);
        do{System.out.println(((box).contents).contents);System.out.flush();}while(false);
    }


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        do{System.out.println("test1:\n--");System.out.flush();}while(false);
        Functions.test1();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test2:\n--");System.out.flush();}while(false);
        Functions.test2();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test3:\n--");System.out.flush();}while(false);
        Functions.test3();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test4:\n--");System.out.flush();}while(false);
        Functions.test4();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test5:\n--");System.out.flush();}while(false);
        Functions.test5();
        do{System.out.println("");System.out.flush();}while(false);
        do{System.out.println("test6:\n--");System.out.flush();}while(false);
        Functions.test6();
    }
}
