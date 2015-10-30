from quark_runtime import *

import pkg



def main():
    t1 = pkg.T1();
    (t1).foo();
    (t1).bar();
    _println(u"===");
    t2 = pkg.T2();
    (t2).foo();
    (t2).bar();
    _println(u"===");
    t3 = pkg.T3();
    (t3).foo();
    (t3).bar();
    _println(u"===");
    t4 = pkg.T4();
    (t4).foo();
    (t4).bar();
    _println(u"===");
    t5 = pkg.T5();
    (t5).foo();
    (t5).bar();


if __name__ == "__main__":
    main()
