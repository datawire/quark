public class Functions {
    public static void test1() {
        Box<Integer> ibox = new Box<Integer>();
        (ibox).set(3);
        Integer three = (ibox).get();
        System.out.println(three);
        (ibox).contents = 4;
        System.out.println((ibox).contents);
    }


    public static void test2() {
        Box<String> sbox = new Box<String>();
        (sbox).set("hello");
        String hello = (sbox).get();
        System.out.println(hello);
        (sbox).contents = "world";
        System.out.println((sbox).contents);
    }


    public static void test3() {
        Crate<Integer> icrate = new Crate<Integer>();
        (icrate).set(3);
        System.out.println((icrate).get());
        (icrate).set(4);
        System.out.println(((icrate).box).contents);
    }


    public static void test4() {
        Sack s = new Sack();
        System.out.println(((s).ints).get());
        System.out.println(((s).ints).contents);
        ((s).ints).set(3);
        System.out.println(((s).ints).get());
        System.out.println(((s).ints).contents);
        ((s).ints).contents = 4;
        System.out.println(((s).ints).get());
        System.out.println(((s).ints).contents);
    }


    public static void test5() {
        Crate<String> scrate = new Crate<String>();
        System.out.println((scrate).get());
        System.out.println(((scrate).box).contents);
        (scrate).set("hello");
        System.out.println((scrate).get());
        System.out.println(((scrate).box).contents);
        ((scrate).ibox).contents = 3;
        System.out.println(((scrate).ibox).contents);
    }


    public static void test6() {
        Box<Box<Integer>> box = new Box<Box<Integer>>();
        (box).set(new Box<Integer>());
        ((box).get()).set(3);
        System.out.println(((box).get()).get());
        System.out.println(((box).contents).contents);
    }


    public static void main() {
        System.out.println("test1:\n--");
        Functions.test1();
        System.out.println("");
        System.out.println("test2:\n--");
        Functions.test2();
        System.out.println("");
        System.out.println("test3:\n--");
        Functions.test3();
        System.out.println("");
        System.out.println("test4:\n--");
        Functions.test4();
        System.out.println("");
        System.out.println("test5:\n--");
        Functions.test5();
        System.out.println("");
        System.out.println("test6:\n--");
        Functions.test6();
    }
    public static void main(String[] args) {
        main();
    }
}
