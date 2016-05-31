namespace a {

   class Base {}

   class Derived extends b.Base {}

}

namespace b {

    class Base {}

    class Derived extends a.Base {}

}
