quark 0.6.100;
package overlapping_namespace 0.1.0;

use lib/org_example_foo.q;

import org.example.foo;

namespace org {
  namespace example {
    namespace bar {
      class Bar {
          void test() {}
      }
    }
  }
}
