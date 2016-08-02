quark *;
namespace ccc {
class TLSContextInitializer extends TLSInitializer<Context> {
        Context getValue() {
            return new Context(Context.global());
        }
    }

    class Context {
        static Context _global = new Context(null);
         // xfail:java wrong reflection metadata created for ccc_TLS_ccc_Context construct method does not expand the <T> in the cast
        static TLS<Context> _current = new TLS<Context>(new TLSContextInitializer());
        static Context current() {
            return _current.getValue();
        }
        // xfail:py keyword clash probably also forward reference issue
        static Context global() {
            return _global;
        }

        Context(Context parent) {
            self.parent = parent;
        }

        Context parent;
    }

    interface TLSInitializer<T> {
        T getValue();
    }

    class TLS<T> {
        T _value;
        // xfail:js because static initializer for ccc.Context._current is emitted before the TLS class
        // xfail:rb because static initializer for ccc.Context._current is emitted before the TLS class
        TLS(TLSInitializer<T> initializer) {
            self._value = initializer.getValue();
        }
        T getValue() {
            return self._value;
        }
    }

}

void main(List<String> args) {
    ccc.Context x = ccc.Context.current();
    print("OK");
}
