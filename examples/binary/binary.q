quark 0.6.100;
@version("0.1.0")
@doc("An example of a binary websockets protocol.")
namespace binary {

    class Binary extends WSServlet {
        Runtime runtime;

        Binary(Runtime runtime) {
            self.runtime = runtime;
        }

        WSHandler onWSConnect(HTTPRequest request) {
            return new BinaryServer(self.runtime);
        }

    }

    class BinaryCommon extends WSHandler {
        Runtime runtime;

        BinaryCommon(Runtime runtime) {
            self.runtime = runtime;
        }

        void onWSError(WebSocket socket) {
            print("ws error");
        }

    }

    class BinaryServer extends BinaryCommon {
        void onWSBinary(WebSocket sock, Buffer message) {
            // echo back every message
            sock.sendBinary(message);
        }

    }

    class BinaryClient extends BinaryCommon {

        BinaryClient(Runtime runtime, String url) {
            super(runtime);
            self.runtime.open(url, self);
        }

        void onWSConnected(WebSocket sock) {
            Buffer buf = self.runtime.codec().fromHexdump("0xdeadbeef");
            sock.sendBinary(buf);
        }

        void onWSBinary(WebSocket sock, Buffer message) {
            print("====[" + message.capacity().toString() + "]");
            print(self.runtime.codec().toHexdump(message, 0, message.capacity(), 0));
        }

    }

}
