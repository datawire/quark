quark *;
include io.q;

import quark.test;
import quark.mock;
import quark.promise;
import quark_io;

void main(List<String> args) {
    test.run(args);
}

class HTTPRequestTest extends MockRuntimeTest {
    // If the HTTP requests gets a response the Promise returned by
    // httpRequest() resolves with the HTTPResponse.
    void testResponse() {
        Promise p = quark_io.IO.httpRequest(new HTTPRequest("https://example.com"));
        RequestEvent event = ?self.mock.events[0];
        Map<String,String> headers = new Map<String,String>();
        headers["key"] = "value";
        event.respond(123, headers, "BODY!");
        HTTPResponse result = ?p.value().getValue();
        checkEqual(123, result.getCode());
        checkEqual(headers, result.getHeaders());
        checkEqual("BODY!", result.getBody());
    }

    // If the HTTP request gets an error the Promise returned by
    // httpRequest() resolves with the HTTPError.
    void testErrorResponse() {
        Promise p = quark_io.IO.httpRequest(new HTTPRequest("https://example.com"));
        RequestEvent event = ?self.mock.events[0];
        HTTPError error = new HTTPError("ONO");
        event.fail(error);
        HTTPError result = ?p.value().getValue();
        checkEqual(error, result);
    }
}
