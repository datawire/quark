public class Functions {
    public static void main() {
        java.util.ArrayList<String> stuff = new java.util.ArrayList(java.util.Arrays.asList(new Object[]{"one", "two", "three", "four"}));
        Integer idx = 0;
        while (true) {
            String s = (stuff).get(idx);
            if ((s)==("three") || ((s) != null && (s).equals("three"))) {
                System.out.println("breaking");
                break;
            }
            System.out.println("not breaking");
            idx = (idx) + (1);
        }
        idx = 0;
        Boolean loop = true;
        while (loop) {
            String s2 = (stuff).get(idx);
            if (!((s2)==("three") || ((s2) != null && (s2).equals("three")))) {
                idx = (idx) + (1);
                System.out.println("continuing");
                continue;
            }
            System.out.println("not continuing");
            loop = false;
        }
    }
    public static void main(String[] args) {
        main();
    }
}
