public class Overload {
    public Overload __add__(Overload o) {
        return o;
    }
    public Overload __mul__(Overload o) {
        return o;
    }
    public void test() {
        Overload o1 = new Overload();
        Overload o2 = new Overload();
        Overload o3 = (o1).__add__(o2);
        o3 = (o1).__mul__(o2);
    }
}