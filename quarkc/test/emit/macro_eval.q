// xfail
class side_effects {
    String trace;

    side_effects() {
        trace = "T";
    }

    String R() { self.trace = self.trace + "R"; return self.trace; }
    String A() { self.trace = self.trace + "A"; return self.trace; }

    String E() { self.trace = self.trace + "CE"; return self.trace; }

}

String triop(bool a, String b, String c) {
    if (a) { return b; } else { return c; }
}

macro String plus(String x, String y) 
    (triop(((x) != "a"),
           (x),
           "null")
     +
     triop(((y) != "b"),
           (y),
           "null"));


void main() {
    side_effects a = new side_effects();

    print(plus(a.R(), a.A()));
    print("trace: " + a.E());
}
