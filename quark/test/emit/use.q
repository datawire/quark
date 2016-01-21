use lib/test.q;
import testlib;
import testlib.foo as bar;
import testlib as tl;
import t2.test as t2;

include lib/foo.q;

package puse 4.5.6;

void main() {
    print(test());
    print(bar());
    print(tl.foo());
    t2();
    print(qux());
}
