public class Overload {
    public Overload add(Overload o) {
        return o;
    }
    public void test() {
        Overload o1 = new Overload();
        Overload o2 = new Overload();
        Overload o3 = (o1).add(o2);
    }
}