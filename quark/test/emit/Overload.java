public class Overload {
    public Overload add(Overload o) {
        return o;
    }
    public Overload multiply(Overload o) {
        return o;
    }
    public void test() {
        Overload o1 = new Overload();
        Overload o2 = new Overload();
        Overload o3 = (o1).add(o2);
        o3 = (o1).multiply(o2);
    }
}