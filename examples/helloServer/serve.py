import quark_twisted_runtime
import quark_runtime
import hello_server

from twisted.internet.defer import setDebugging
setDebugging(True)

class PrintWSHandler:
    def __init__(self, id):
        self.id = id

    def onWSMessage(self, socket, message):
        print self.id, "client.onWSMessage", message

    def onWSInit(self, socket):
        print self.id, "client.onWSInit"

    def onWSFinal(self, socket):
        print self.id, "client.onWSFinal"

    def onWSError(self, socket):
        print self.id, "client.onWSError"

    def onWSConnected(self, socket):
        print self.id, "client.onWSConnected"
        socket.send("hello socket!")

    def onWSClosed(self, socket):
        print self.id, "client.onWSClosed"

    def onWSBinary(self, socket, message):
        print self.id, "client.onWSBinary", message

class PrintHTTPHandler:
    def __init__(self, id):
        self.id = id

    def onHTTPInit(self, request):
        print self.id, "client.onHTTPInit"

    def onHTTPFinal(self, request):
        print self.id, "client.onHTTPFinal"

    def onHTTPError(self, request):
        print self.id, "client.onHTTPError"

    def onHTTPResponse(self, request, response):
        print "response"
        print self.id, str_response(response)

def str_response(response):
    return "\n  ".join(
        ["---------"] +
        [str(response.getCode())] +
        ["%s: %s" % (key, response.getHeader(key))
          for key in response.getHeaders()] +
        [""] +
        [response.getBody()] +
        ["\r--------\n"]
        )


class client_ws:
    def onExecute(self, runtime):
        runtime.open("ws://127.0.0.1:9876/ws", PrintWSHandler("ws"))
class client_wsx:
    def onExecute(self, runtime):
        runtime.open("ws://127.0.0.1:9876/wsx", PrintWSHandler("wsx"))
class client_xws:
    def onExecute(self, runtime):
        request = quark_runtime._HTTPRequest("http://127.0.0.1:9876/ws")
        request.setMethod("GET")
        runtime.request(request, PrintHTTPHandler("xfail ws"))
class client_foo:
    def onExecute(self, runtime):
        request = quark_runtime._HTTPRequest("http://127.0.0.1:9876/foo")
        request.setMethod("GET")
        runtime.request(request, PrintHTTPHandler("foo"))
class client_world:
    def onExecute(self, runtime):
        request = quark_runtime._HTTPRequest("http://127.0.0.1:9876/foo/world")
        request.setMethod("GET")
        runtime.request(request, PrintHTTPHandler("foo-world"))
class client_bar:
    def onExecute(self, runtime):
        request = quark_runtime._HTTPRequest("http://127.0.0.1:9876/foo/bar")
        request.setMethod("GET")
        runtime.request(request, PrintHTTPHandler("xfail foo-bar"))

def main():
    runtime = quark_twisted_runtime.get_twisted_runtime()
    servlet = hello_server.HelloServlet()
    runtime.serveHTTP("http://127.0.0.1:9876/foo", servlet)
    runtime.serveHTTP("http://127.0.0.1:0/foo", servlet)
    runtime.serveHTTP("http://127.0.0.1/foo", servlet)
    msservlet = hello_server.MySocketServlet()
    runtime.serveWS("ws://127.0.0.1:9876/ws", msservlet)
    runtime.schedule(client_ws(),    0.1)
    runtime.schedule(client_wsx(),   0.2)
    runtime.schedule(client_xws(),   0.3)
    runtime.schedule(client_foo(),   0.4)
    runtime.schedule(client_world(), 0.5)
    runtime.schedule(client_bar(),   0.6)
    runtime.launch()

if __name__ == '__main__':
    main()
