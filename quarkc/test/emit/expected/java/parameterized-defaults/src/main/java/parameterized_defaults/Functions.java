package parameterized_defaults;

public class Functions {

    static parameterized_defaults_md.Root root = new parameterized_defaults_md.Root();


    public static void main() {
        pkg.StringBox box = new pkg.StringBox("asdf");
        do{System.out.println((box).contents);System.out.flush();}while(false);
        pkg.StringFoo foo = new pkg.StringFoo();
        do{System.out.println((foo).foo());System.out.flush();}while(false);
    }
}
