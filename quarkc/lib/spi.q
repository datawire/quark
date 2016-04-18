include io/datawire/quark/runtime/RuntimeSpi.java;
namespace quark {
namespace spi {

    interface RuntimeSpi {
        macro RuntimeSpi() $java{io.datawire.quark.runtime.RuntimeSpi.Factory.create()}
        $py{_RuntimeFactory.create()}
        $rb{::DatawireQuarkCore::Runtime.new}
        $js{_qrt.RuntimeFactory.create()};

        @doc("SPI needs to pass it's own API facade to callback API methods")
        void setRuntime(Runtime runtime);
        
        void open(String url, WSHandler handler);
        void request(HTTPRequest request, HTTPHandler handler);
        void schedule(Task handler, float delayInSeconds);
        Codec codec();
        void serveHTTP(String url, HTTPServlet servlet);
        void serveWS(String url, WSServlet servlet);
        void respond(HTTPRequest request, HTTPResponse response);

        @doc("Display the explanatory message and then terminate the program")
        void fail(String message);

        @doc("Get a logger for the specified topic.")
        Logger logger(String topic);
    }

    class RuntimeApi extends Runtime {
        RuntimeSpi impl;
        RuntimeProxy(RuntimeSpi impl) {
            self.impl = impl;
        }
        void open(String url, WSHandler handler) {
            impl.open(url, handler);
        }
        void request(HTTPRequest request, HTTPHandler handler) {
            impl.request(request, handler);
        }
        void schedule(Task handler, float delayInSeconds) {
            impl.schedule(handler, delayInSeconds);
        }
        Codec codec() {
            return impl.codec();
        }
        void serveHTTP(String url, HTTPServlet servlet) {
            impl.serveHTTP(url, servlet);
        }
        void serveWS(String url, WSServlet servlet) {
            impl.serveWS(url, servlet);
        }
        void respond(HTTPRequest request, HTTPResponse response) {
            impl.respond(request, response);
        }
        void fail(String message) {
            impl.fail(message);
        }
        Logger logger(String topic) {
            return impl.logger(topic);
        }
    }

    class RuntimeFactory {
        static RuntimeFactory factory = new RuntimeFactory();

        quark.Runtime makeRuntime() {
            RuntimeSpi spi = new RuntimeSpi();
            RuntimeApi api = new RuntimeApi(spi);
            spi.setRuntime(api);
            return api;
        }
    }
}}
