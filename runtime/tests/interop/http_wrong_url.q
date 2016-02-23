@version("1.2.3") // version is mandatory
namespace interop { // package interop is mandatory
    class Entrypoint { // class Entrypoint is mandatory
        void server(int port) { // port is mandatory constructor parameters
            print("wrong_url server");
            HelloServlet().serveHTTP("http://127.0.0.1:" + port.toString() + "/http_server");

        }
        void client(int port) {
            print("wrong_url client");
            TimeoutClient(port)
                .url("/http_server_is_not_here")
                .expectCode(404)
                .check(0.5);
        }
    }

////include http_server.qinc
////include common.qinc
}
