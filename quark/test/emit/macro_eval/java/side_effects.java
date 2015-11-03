public class side_effects {
    public String trace;
    public side_effects() {
        trace = "T";
    }
    public String R() {
        (this).trace = ((this).trace) + ("R");
        return (this).trace;
    }
    public String A() {
        (this).trace = ((this).trace) + ("A");
        return (this).trace;
    }
    public String E() {
        (this).trace = ((this).trace) + ("CE");
        return (this).trace;
    }
}