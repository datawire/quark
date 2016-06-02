quark *;
@version("1.2.3") // version is mandatory
namespace interop { // package interop is mandatory
////include http_server.qinc
////include common.qinc
    class Entrypoint extends EntrypointSetup { // class Entrypoint is mandatory
        void server(int port) { // port is mandatory constructor parameter
            print("http_crashing_servlet server");
            HelloServlet servlet = CrashingServlet();
            servlet.serveHTTP("http://localhost:" + port.toString() + "/http_server");
        }
        void client(int port) {
            print("http_crashing_servlet client");
            TimeoutClient(port)
                .url("/http_server")
                .expectCode(500)
                .check(2.5);
        }
    }
}
