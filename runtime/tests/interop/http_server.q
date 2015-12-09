@version("1.2.3") // version is mandatory
package interop { // package interop is mandatory

    class HelloServlet extends HTTPServlet {
        Runtime runtime;
        void onServletInit(String url, Runtime runtime) {
            self.runtime = runtime;
            print("Hello Registered on " + url);
        }

        void onHTTPRequest(HTTPRequest rq, HTTPResponse rs) {
            rs.setCode(200);
            rs.setBody("Hello World!\r\n");
            rs.setHeader("Content-Type", "text/plain");
            rs.setHeader("X-Custom-Header", "custom value");
            self.runtime.respond(rq, rs);
        }

        void onServletError(String url, String reason) {
            print("Hello Trouble with registering at " + url + "   reason: " + reason);
        }

        void onServletEnd(String url) {
            print("Hello End of serving on " + url);
        }
    }

    //////// I wish I could reuse this part in other tests....

    interface Check {
        void check(TimeoutClient client);
    }


    class ResponseCheck extends Check {
        void check(TimeoutClient client) {
            if (client.response != null) {
                checkResponse(client.response);
            } else {
                print("FAIL: No response");
            }
        }
        void checkResponse(HTTPResponse response);
    }

    class CheckCode extends ResponseCheck {
        int expected;
        CheckCode(int code) {
            self.expected = code;
        }
        void checkResponse(HTTPResponse response) {
            int actual = response.getCode();
            if (actual != expected) {
                print("FAIL: Response code " + actual.toString() + " expected " + expected.toString());
            } else {
                print("OK: Response code " + actual.toString());
            }
        }
    }

    class CheckBody extends ResponseCheck {
        String expected;
        CheckBody(String body) {
            self.expected = body;
        }
        void checkResponse(HTTPResponse response) {
            String actual = response.getBody();
            if (actual != expected) {
                print("FAIL: Response body " + actual + " expected " + expected);
            } else {
                print("OK: Response body " + actual);
            }
        }
    }

    class CheckHeader extends ResponseCheck {
        String key;
        String expected;
        CheckBody(String key, String value) {
            self.key = key;
            self.expected = value;
        }
        void checkResponse(HTTPResponse response) {
            String actual = response.getHeader(self.key);
            if (actual != expected) {
                if (actual == null) {
                    print("FAIL: missing header " + self.key);
                } else {
                    print("FAIL: Response header " + self.key + ": " + actual + " expected " + expected);
                }
            } else {
                print("OK: Response header " + self.key + ": " + actual);
            }
        }
    }

    class Timeout extends Task {
        bool timedOut;
        bool cancelled;
        Timeout() {
            self.timedOut = false;
            self.cancelled = false;
        }
        void cancel() {
            if (self.timedOut) {
                return;
            } else {
                self.cancelled = true;
            }
        }
        void onExecute(Runtime runtime) {
            if (self.cancelled) {
                return;
            } else {
                self.timedOut = true;
            }
        }
    }

    class TimeoutClient extends HTTPHandler {
        bool timedOut;
        HTTPRequest request;
        HTTPResponse response;
        Runtime runtime;
        String prefix;
        List<Check> expectations;
        Timeout timeout;
        TimeoutClient(Runtime runtime, int port) {
            self.runtime = runtime;
            self.prefix = "http://127.0.0.1:" + port.toString();
            self.timedOut = false;
            self.expectations = new List<Check>();
        }
        TimeoutClient url(String path) {
            self.request = HTTPRequest(self.prefix + path);
            return self;
        }
        TimeoutClient expectCode(int code) {
            self.expectations.add(CheckCode(code));
            return self;
        }
        TimeoutClient expectBody(String body) {
            self.expectations.add(CheckBody(body));
            return self;
        }
        TimeoutClient expectHeader(String key, String value) {
            self.expectations.add(CheckHeader(key, value));
            return self;
        }
        void check(float timeout) {
            self.timeout = Timeout();
            self.response = null;
            if (self.request != null) {
                self.runtime.schedule(self.timeout, timeout);
                self.runtime.request(self.request, self);
            } else {
                print("FAIL: cannot check without request");
            }
        }
        void onHTTPInit(HTTPRequest request) {
            print("onHTTPInit " + request.getUrl());
        }
        void onHTTPError(HTTPRequest request) {
            print("onHTTPError " + request.getUrl());
        }
        void onHTTPFinal(HTTPRequest request) {
            print("onHTTPFinal " + request.getUrl());
        }
        void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
            self.timeout.cancel();
            if (self.timeout.timedOut) {
                print("FAIL: too late response");
                return;
            }
            self.response = response;
            int i = 0;

            while (i < self.expectations.size()) {
                self.expectations[i].check(self);
                i = i + 1;
            }
        }
    }

    class Entrypoint { // class Entrypoint is mandatory
        void server(Runtime runtime, int port) { // runtime and port are mandatory constructor parameters
            runtime.serveHTTP("http://localhost:" + port.toString() + "/http_server", HelloServlet());

        }
        void client(Runtime runtime, int port) {

            TimeoutClient(runtime, port)
                .url("/http_server")
                .expectCode(200)
                .expectBody("Hello World!\r\n")
                .expectHeader("X-Custom-Header", "custom value")
                .check(0.5);
        }
    }

}
