public class Y extends X {
    public String name;
    public Y(String name) {
        (this).name = name;
    }
    public void test() {
        System.out.println((this).name);
    }
}