package test3;

public class Functions {
    public static void go() {
        Box<String> box = new Box<String>("Hello World!!!");
        System.out.println((box).get());
        System.out.println((box).contents);
        System.out.println((new Box<String>("Hello World!!!")).get());
        System.out.println((new Box<String>("Hello World!!!")).contents);
    }
}