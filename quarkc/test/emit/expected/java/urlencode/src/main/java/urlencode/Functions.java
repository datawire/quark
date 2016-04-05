package urlencode;

public class Functions {

    static urlencode_md.Root root = new urlencode_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        java.util.HashMap<String,Object> map = new java.util.HashMap<String,Object>();
        (map).put(("pi"), (3.14159));
        do{System.out.println(io.datawire.quark.runtime.Builtins.urlencode(map));System.out.flush();}while(false);
    }
}
