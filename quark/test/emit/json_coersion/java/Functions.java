public class Functions {
    public static void main() {
        io.datawire.quark.runtime.JSONObject json = new io.datawire.quark.runtime.JSONObject();
        (json).setObjectItem(("string"), ((new io.datawire.quark.runtime.JSONObject()).setString("this is a string")));
        (json).setObjectItem(("number"), ((new io.datawire.quark.runtime.JSONObject()).setNumber(3.14159)));
        String encoded = (json).toString();
        System.out.println(encoded);
        io.datawire.quark.runtime.JSONObject dec = io.datawire.quark.runtime.JSONObject.parse(encoded);
        String string = ((dec).getObjectItem("string")).getString();
        Double number = ((dec).getObjectItem("number")).getNumber();
        System.out.println(string);
        System.out.println(number);
    }
    public static void main(String[] args) {
        main();
    }
}