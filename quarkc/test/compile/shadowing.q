quark 1.0;
package shadowing 0.1.0;

namespace shadowing {
  interface Runtime {} // Shadows quark.Runtime

  interface VeryUnlikelyShadowedByQuark {}

  interface ShadowingInterface {
    void foo(Runtime err);
    void bar(VeryUnlikelyShadowedByQuark err);
  }
}
