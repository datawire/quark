package hello_server {
    class HelloServlet extends HTTPServlet {
        Runtime runtime;
        void onHTTPInit(String url, Runtime runtime) {
            self.runtime = runtime;
            print("Registered on " + url);
        }

        void onHTTPRequest(HTTPRequest rq, HTTPResponse rs) {
            rs.setCode(200);
            rs.setBody("Hello World!\r\n");
            rs.setHeader("Content-Type", "text/plain");
            self.runtime.respond(rq, rs);
        }
        
        void onHTTPError(String url) {
            print("Trouble with registering at " + url);
        }
    }
}
