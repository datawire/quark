@version("1.2.3") // version is mandatory
package interop { // package interop is mandatory
    class Entrypoint { // class Entrypoint is mandatory
        void server(Runtime runtime, int port) { // runtime and port are mandatory constructor parameters
            HelloServlet servlet = CrashingServlet();
            runtime.serveHTTP("http://localhost:" + port.toString() + "/http_server", servlet);
        }
        void client(Runtime runtime, int port) {

            TimeoutClient(runtime, port)
                .url("/http_server")
                .expectCode(500)
                .check(2.5);
        }
    }
////include http_server.qinc
////include common.qinc
}
