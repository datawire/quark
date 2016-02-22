package p1;

public class Functions {
    public static void c() {
        do{System.out.println("c");System.out.flush();}while(false);
    }


    public static void d() {
        do{System.out.println("d");System.out.flush();}while(false);
    }


    public static void main() {
        p1.p2.Functions.a();
        p1.p2.Functions.b();
        Functions.c();
        Functions.d();
    }
}
