public class Functions {
    public static void test_split() {
        String chunk = "a:b:c:d:e:f";
        String sep = ":";
        java.util.ArrayList<String> pieces = (java.util.ArrayList<String>) (new java.util.ArrayList<String>(java.util.Arrays.asList((chunk).split(java.util.regex.Pattern.quote(sep)))));
        System.out.println(("size: ") + (Integer.toString((pieces).size())));
        Integer i = 0;
        while ((i) < ((pieces).size())) {
            System.out.println((((("piece[") + (Integer.toString(i))) + ("] = '")) + ((pieces).get(i))) + ("'"));
            i = (Integer) ((i) + (1));
        }
    }
    public static void main() {
        Functions.test_split();
    }
    public static void main(String[] args) {
        main();
    }
}