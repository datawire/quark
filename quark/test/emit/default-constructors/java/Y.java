public class Y extends X {
    public String name;
    public Y(String name) {
        super();
        (this).name = name;
    }
    public void test() {
        System.out.println((this).name);
    }
}
