quark *;
// xfail
// should not be allowed to modify shared namespace across distribution units
use ./mod-ns-across-du-first.q;

namespace shared {
    void another() {}
}
