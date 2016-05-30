import quark.test;


void main(List<String> args) {
    test.run(args);
}

class WSEvent {
    String event;
    WebSocket socket;
    WSEvent(String event, WebSocket socket) {
        self.event = event;
        self.socket = socket;
    }
    String toString() { return event; }
}
class WSInitEvent extends WSEvent {
    WSInitEvent(WebSocket socket) {
        super("onWSInit", socket);
    }
}
class WSConnectedEvent extends WSEvent {
    WSConnectedEvent(WebSocket socket) {
        super("onWSConnected", socket);
    }
}
class WSMessageEvent extends WSEvent {
    String message;
    WSMessageEvent(WebSocket socket, String message) {
        super("onWSMessage", socket);
        self.message = message;
    }
    String toString() { return super.toString() + "('" + message + "')"; }
}
class WSBinaryEvent extends WSEvent {
    Buffer message;
    WSBinaryEvent(WebSocket socket, Buffer message) {
        super("onWSBinary", socket);
        self.message = message;
    }
    String toString() {
        return super.toString() + "("
            + (concurrent.Context.runtime().codec()
               .toHexdump(message, 0, message.capacity(), 2))
            + ")"; }
}
class WSClosedEvent extends WSEvent {
    WSClosedEvent(WebSocket socket) {
        super("onWSClosed", socket);
    }
}
class WSErrorEvent extends WSEvent {
    WSError error;
    WSErrorEvent(WebSocket socket, WSError error) {
        super("onWSError", socket);
        self.error = error;
    }
    String toString() {
        return super.toString() + "('" +
            "..." + "')";
    }
}
class WSFinalEvent extends WSEvent {
    WSFinalEvent(WebSocket socket) {
        super("onWSFinal", socket);
    }
}
class WSNullHandler extends WSHandler {}
class WSHandlerTrace extends WSHandler {
    concurrent.Future fut = new concurrent.Future();
    List<WSEvent> events = new List<WSEvent>();
    bool initialized = false;
    WSHandler logic;
    WSHandlerTrace(WSHandler logic) {
        if (logic != null) {
            self.logic = logic;
        } else {
            self.logic = new WSNullHandler();
        }
    }
    void onWSInit(WebSocket socket) {
        events.add(new WSInitEvent(socket));
        initialized = true;
        logic.onWSInit(socket);
    }
    void onWSConnected(WebSocket socket) {
        events.add(new WSConnectedEvent(socket));
        logic.onWSConnected(socket);
    }
    void onWSMessage(WebSocket socket, String message) {
        events.add(new WSMessageEvent(socket, message));
        logic.onWSMessage(socket, message);
    }
    void onWSBinary(WebSocket socket, Buffer message) {
        events.add(new WSBinaryEvent(socket, message));
        logic.onWSBinary(socket, message);
    }
    void onWSClosed(WebSocket socket) {
        events.add(new WSClosedEvent(socket));
        logic.onWSClosed(socket);
    }
    void onWSError(WebSocket socket, WSError error) {
        events.add(new WSErrorEvent(socket, error));
        logic.onWSError(socket, error);
        if (!initialized) {
            fut.finish(error);
        }
    }
    void onWSFinal(WebSocket socket) {
        events.add(new WSFinalEvent(socket));
        logic.onWSFinal(socket);
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

class Closer extends WSHandler {
    void onWSConnected(WebSocket socket) {
        socket.close();
    }
}

macro bool isJavascript() $java{false} $py{False} $rb{false} $js{true};

class WSErrorTest {
    WSErrorTest() {}

    void testHttp404() { checkWSError("ws://httpstat.us/404"); }
    void testHttp500() { checkWSError("ws://httpstat.us/500"); }
    void testSillyPort() { checkWSError("ws://localhost:99/anybody/there/?"); }
    void testSillyHost() { checkWSError("ws://10.255.255.1/anybody/there/?"); }

    void checkWSError(String url) {
        if (isJavascript()) {
            print("This test cannot be run on javascript!");
            check(true, "Ignored");
            return;
        }
        WSHandlerTrace trace = new WSHandlerTrace(new Closer());
        concurrent.Context.runtime().open(url, trace);
        (new concurrent.FutureWait()).wait(trace.fut, 90.0);
        check(trace.fut.isFinished(), "Timed out: " + trace.sequence());
        checkEqual("onWSInit, onWSError('...'), onWSFinal", trace.sequence());
    }
}
