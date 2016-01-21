package break_and_continue_lib;

public class Functions {
    public static void main() {
        java.util.ArrayList<String> stuff = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"one", "two", "three", "four"}));
        Integer idx = 0;
        while (true) {
            String s = (stuff).get(idx);
            if ((s)==("three") || ((s) != null && (s).equals("three"))) {
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
            if (!((s2)==("three") || ((s2) != null && (s2).equals("three")))) {
                idx = (idx) + (1);
                do{System.out.println("continuing");System.out.flush();}while(false);
                continue;
            }
            do{System.out.println("not continuing");System.out.flush();}while(false);
            loop = false;
        }
    }
}
