package operator_overload;

public class Functions {

    static operator_overload_md.Root root = new operator_overload_md.Root();


    public static final void main(String[] args) {
        main(new java.util.ArrayList(java.util.Arrays.asList(args)));
    }

    public static void main(java.util.ArrayList<String> args) {
        Overload o = new Overload("test");
        (o).test();
    }
}
