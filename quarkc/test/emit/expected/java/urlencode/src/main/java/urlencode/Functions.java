package urlencode;

public class Functions {
    public static void main() {
        java.util.HashMap<String,Object> map = new java.util.HashMap<String,Object>();
        (map).put(("pi"), (3.14159));
        do{System.out.println(io.datawire.quark.runtime.Builtins.urlencode(map));System.out.flush();}while(false);
    }
}
