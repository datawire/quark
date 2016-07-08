quark *;

import quark.test;
import quark.mock;

void main(List<String> args) {
    test.run(args);
}

class HTTPRequestTest extends MockRuntimeTest {
    // If the HTTP requests gets a response the Promise returned by
    // httpRequest() resolves with the HTTPResponse.
    void testResponse() {
        Promise p = IO.httpRequest(new HTTPRequest("https://example.com"));
        RequestEvent event = ?self.mock.events[0];
        Map<String,String> headers = new Map<String,String>();
        headers["key"] = "value";
        event.respond(123, headers, "BODY!");
        HTTPResponse result = ?p.value().getValue();
        checkEqual(123, result.getCode());
        checkEqual("value", result.getHeader("key"));
        checkEqual("BODY!", result.getBody());
    }

    // If the HTTP request gets an error the Promise returned by
    // httpRequest() resolves with the HTTPError.
    void testErrorResponse() {
        Promise p = IO.httpRequest(new HTTPRequest("https://example.com"));
        RequestEvent event = ?self.mock.events[0];
        HTTPError error = new HTTPError("ONO");
        event.fail(error);
        HTTPError result = ?p.value().getValue();
        checkEqual(error, result);
    }
}

// These could be tested better once Mock runtime supports mocking time.
class ScheduleTest extends MockRuntimeTest {
    // A Task is scheduled with given delay
    void testScheduleWithDelay() {
        IO.schedule(5.3);
        checkEqual(5.3, self.mock.tasks[0].delay);
    }

    // The Promise gets a result eventually
    void testHasResultEventually() {
        Promise p = IO.schedule(1.0);
        checkEqual(false, p.value().hasValue());

        self.mock.advanceClock(1001L);
        self.mock.pump();
        checkEqual(true, p.value().hasValue());
        checkEqual(true, p.value().getValue());
    }
}
