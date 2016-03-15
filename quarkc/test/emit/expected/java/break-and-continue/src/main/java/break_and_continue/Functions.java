package break_and_continue;

public class Functions {

    static break_and_continue_md.Root root = new break_and_continue_md.Root();


    public static void main() {
        java.util.ArrayList<String> stuff = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"one", "two", "three", "four"}));
        Integer idx = 0;
        while (true) {
            String s = (stuff).get(idx);
            if ((s)==("three") || ((Object)(s) != null && ((Object) (s)).equals("three"))) {
                do{System.out.println("breaking");System.out.flush();}while(false);
                break;
            }
            do{System.out.println("not breaking");System.out.flush();}while(false);
            idx = (idx) + (1);
        }
        idx = 0;
        Boolean loop = true;
        while (loop) {
            String s2 = (stuff).get(idx);
            if (!((s2)==("three") || ((Object)(s2) != null && ((Object) (s2)).equals("three")))) {
                idx = (idx) + (1);
                do{System.out.println("continuing");System.out.flush();}while(false);
                continue;
            }
            do{System.out.println("not continuing");System.out.flush();}while(false);
            loop = false;
        }
    }
}
