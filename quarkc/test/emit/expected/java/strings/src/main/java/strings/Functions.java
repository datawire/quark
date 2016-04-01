package strings;

public class Functions {

    static strings_md.Root root = new strings_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        do{System.out.println("\"");System.out.flush();}while(false);
        do{System.out.println("\"\"");System.out.flush();}while(false);
        do{System.out.println("\u0000");System.out.flush();}while(false);
        do{System.out.println("\u00FF");System.out.flush();}while(false);
        do{System.out.println("\u00ff");System.out.flush();}while(false);
        do{System.out.println("\u00FF");System.out.flush();}while(false);
        do{System.out.println("\u00ff");System.out.flush();}while(false);
        do{System.out.println("\n");System.out.flush();}while(false);
    }
}
