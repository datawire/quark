package static__lib;

public class Functions {
    public static void main() {
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        Foo f = new Foo();
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        f = new Foo();
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println("==");System.out.flush();}while(false);
        (f).test1();
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println("==");System.out.flush();}while(false);
        (f).test2();
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println("==");System.out.flush();}while(false);
        (f).test3();
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println("==");System.out.flush();}while(false);
        (f).test4();
        do{System.out.println(Foo.getCount());System.out.flush();}while(false);
        do{System.out.println(Foo.getCount());System.out.flush();}while(false);
        do{System.out.println("==");System.out.flush();}while(false);
        Foo.setCount(0);
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println(Foo.getCount());System.out.flush();}while(false);
        do{System.out.println(Foo.getCount());System.out.flush();}while(false);
        do{System.out.println("==");System.out.flush();}while(false);
        Foo.setCount(-(1));
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println(Foo.count);System.out.flush();}while(false);
        do{System.out.println(Foo.getCount());System.out.flush();}while(false);
        do{System.out.println(Foo.getCount());System.out.flush();}while(false);
    }
}
