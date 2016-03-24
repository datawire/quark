package operator_overload;

public class Functions {

    static operator_overload_md.Root root = new operator_overload_md.Root();


    public static void main() {
        Overload o = new Overload("test");
        (o).test();
    }
}
