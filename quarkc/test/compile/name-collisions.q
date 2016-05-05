// Collision
namespace foo {}
namespace FOO {}

// No collision, namespace is re-opened
namespace qux {}
namespace qux {}

// Collision
class bar {}
class BAR {}

void test() {
    // No collision
    int bar;
    int BAR;
}
