quark *;

import quark.test;

void main(List<String> args) {
    logging.makeConfig().setLevel("DEBUG").configure();
    test.run(args);
}

class HTTPEvent {
    String event;
    HTTPRequest request;
    HTTPEvent(String event, HTTPRequest request) {
        self.event = event;
        self.request = request;
    }
    String toString() { return event; }
}
class HTTPInitEvent extends HTTPEvent {
    HTTPInitEvent(HTTPRequest request) {
        super("onHTTPInit", request);
    }
}
class HTTPResponseEvent extends HTTPEvent {
    HTTPResponse response;
    HTTPResponseEvent(HTTPRequest request, HTTPResponse response) {
        super("onHTTPResponse", request);
        self.response = response;
    }
    String toString() {
        return super.toString() + "("
            + response.getCode().toString()
            + ")";
    }
}
class HTTPErrorEvent extends HTTPEvent {
    HTTPError error;
    HTTPErrorEvent(HTTPRequest request, HTTPError error) {
        super("onHTTPError", request);
        self.error = error;
    }
    String toString() {
        return super.toString() + "('" +
            "..." + "')";
    }
}
class HTTPFinalEvent extends HTTPEvent {
    HTTPFinalEvent(HTTPRequest request) {
        super("onHTTPFinal", request);
    }
}

class HTTPNullHandler extends HTTPHandler {}
class HTTPHandlerTrace extends HTTPHandler {
    concurrent.Future fut = new concurrent.Future();
    bool initialized = false;
    List<HTTPEvent> events = new List<HTTPEvent>();
    HTTPHandler logic;
    HTTPHandlerTrace(HTTPHandler logic) {
        if (logic != null) {
            self.logic = logic;
        } else {
            self.logic = new HTTPNullHandler();
        }
    }
    void onHTTPInit(HTTPRequest request) {
        events.add(new HTTPInitEvent(request));
        initialized = true;
        logic.onHTTPInit(request);
    }
    void onHTTPResponse(HTTPRequest request, HTTPResponse response) {
        events.add(new HTTPResponseEvent(request, response));
        logic.onHTTPResponse(request, response);
    }
    void onHTTPError(HTTPRequest request, HTTPError message) {
        events.add(new HTTPErrorEvent(request, message));
        logic.onHTTPError(request, message);
        if (!initialized) {
            fut.finish(message);
        }
    }
    void onHTTPFinal(HTTPRequest request) {
        events.add(new HTTPFinalEvent(request));
        logic.onHTTPFinal(request);
        fut.finish(null);
    }
    String sequence() {
        List<String> evts = new List<String>();
        int i = 0;
        while ( i < events.size() ) {
            evts.add(events[i].toString());
            i = i + 1;
        }
        return ", ".join(evts);
    }
}


class HTTPErrorTest {

    // Disabled because it takes over 30 seconds to time out
    //void testSillyHostHTTP() { checkHTTPError("http://10.255.255.1/anybody/there/?"); }
    //void testSillyHostHTTPS() { checkHTTPError("https://10.255.255.1/anybody/there/?"); }

    void testSillyPortHTTP() { checkHTTPError("http://localhost:99/anybody/there/?"); }
    void testSillyPortHTTPS() { checkHTTPError("https://localhost:99/anybody/there/?"); }

    void testGarbageUrl() { checkHTTPError("///////%"); }

    void checkHTTPError(String url) {
        if (isJavascript()) {
            print("This test cannot be run on javascript!");
            check(true, "Ignored");
            return;
        }
        HTTPHandlerTrace trace = new HTTPHandlerTrace(null);
        concurrent.Context.runtime().request(new HTTPRequest(url), trace);
        (new concurrent.FutureWait()).wait(trace.fut, 10.0);
        check(trace.fut.isFinished(), "Timed out: " + trace.sequence());
        checkEqual("onHTTPInit, onHTTPError('...'), onHTTPFinal", trace.sequence());
    }

}
class HTTPRequestTest {

    void test200HTTP() { checkHTTPRequest("http://httpstat.us/200", 200); }
    void test500HTTP() { checkHTTPRequest("http://httpstat.us/500", 500); }
    void test404HTTP() { checkHTTPRequest("http://httpstat.us/404", 404); }

    void test200HTTPS() { checkHTTPRequest("https://raw.githubusercontent.com/datawire/quark/master/node_modules/.gitignore", 200); }
    void test404HTTPS() { checkHTTPRequest("https://raw.githubusercontent.com/datawire/quark/master/not-a-file-in-the-repo", 404); }

    void checkHTTPRequest(String url, int code) {
        if (isJavascript()) {
            print("This test cannot be run on javascript!");
            check(true, "Ignored");
            return;
        }
        HTTPHandlerTrace trace = new HTTPHandlerTrace(null);
        concurrent.Context.runtime().request(new HTTPRequest(url), trace);
        (new concurrent.FutureWait()).wait(trace.fut, 90.0);
        check(trace.fut.isFinished(), "Timed out: " + trace.sequence());
        checkEqual("onHTTPInit, onHTTPResponse("+code.toString()+"), onHTTPFinal", trace.sequence());
    }
}
