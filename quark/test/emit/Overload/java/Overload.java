public class Overload {
    String name;
    public Overload(String name) {
        (this).name = name;
    }
    public Overload __add__(Overload o) {
        return o;
    }
    public Overload __mul__(Overload o) {
        return this;
    }
    public void test() {
        Overload o1 = new Overload("one");
        Overload o2 = new Overload("two");
        Overload o3 = (o1).__add__(o2);
        System.out.println((o3).name);
        o3 = (o1).__mul__(o2);
        System.out.println((o3).name);
        if ((o3).equals(o1)) {
            System.out.println("YAY!");
        }
    }
}