quark *;

use shadowing.q;

import quark.concurrent;
import shadowing;

class Foo extends ShadowingInterface {
  void foo(Runtime haha) {}
  void bar(VeryUnlikelyShadowedByQuark hoho) {}
}
