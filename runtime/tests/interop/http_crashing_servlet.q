@version("1.2.3") // version is mandatory
namespace interop { // package interop is mandatory
    class Entrypoint { // class Entrypoint is mandatory
        void server(int port) { // port is mandatory constructor parameter
            HelloServlet servlet = CrashingServlet();
            servlet.serveHTTP("http://localhost:" + port.toString() + "/http_server");
        }
        void client(int port) {

            TimeoutClient(port)
                .url("/http_server")
                .expectCode(500)
                .check(2.5);
        }
    }
////include http_server.qinc
////include common.qinc
}
