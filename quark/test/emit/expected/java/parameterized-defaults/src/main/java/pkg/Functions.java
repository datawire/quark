package pkg;

public class Functions {
    public static void main() {
        StringBox box = new StringBox("asdf");
        do{System.out.println((box).contents);System.out.flush();}while(false);
        StringFoo foo = new StringFoo();
        do{System.out.println((foo).foo());System.out.flush();}while(false);
    }
}
