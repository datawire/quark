quark *;
package overlapping_namespace 0.1.0;

use lib/org_example_foo.q;

import org.example.foo;

namespace org {
  namespace example {
    namespace bar {
      class Bar {
          void test() {
              Foo f = new Foo();
              f.test();
              print("Bar!");
          }
      }
    }
  }
}

void main(List<String> args) {
    // xfail -- This test currently works for Java, however the Python
    // and Javascript backends need to be somehow modified to
    // accommodate a single package being shared across multiple
    // distribution units.
    org.example.bar.Bar b = new org.example.bar.Bar();
    b.test();
    org.example.foo.Foo f = new org.example.foo.Foo();
    f.test();
}
