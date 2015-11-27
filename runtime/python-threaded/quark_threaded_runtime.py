# Quark's Twisted Runtime and associated

__version__ = "0.1.0"

import threading
import time
import urllib2
from Queue import Queue, Empty

from ws4py.client.threadedclient import WebSocketClient


class _EventProcessor(threading.Thread):

    QUIT = ("QUIT",)

    def __init__(self, runtime):
        super(_EventProcessor, self).__init__()
        self.runtime = runtime

    def run(self):
        while True:
            event = self.runtime.events.get(block=True)
            self.runtime.acquire()
            try:
                while True:
                    if event == self.QUIT:
                        return
                    function, args, kwargs = event
                    function(*args, **kwargs)

                    event = self.runtime.events.get(block=False)  # Raises Empty to break out of loop
            except Empty:
                pass
            finally:
                self.runtime._notify()
                self.runtime.release()


# http://stackoverflow.com/questions/4511598/how-to-make-http-delete-method-using-urllib2
class _RequestWithMethod(urllib2.Request):

    def __init__(self, *args, **kwargs):
        self._method = kwargs.pop('method', None)
        urllib2.Request.__init__(self, *args, **kwargs)

    def get_method(self):
        return self._method if self._method else super(_RequestWithMethod, self).get_method()


class _QuarkRequest(threading.Thread):

    def __init__(self, runtime, request, handler):
        super(_QuarkRequest, self).__init__()
        self.runtime = runtime
        self.request = request
        self.handler = handler
        self.response = None
        headers = {key.encode("utf-8"): str(value).encode("utf-8") for key, value in request.headers.items()}
        if self.request.body:
            bodyBytes = self.request.body.encode("utf-8")
            headers["Content-Length"] = str(len(bodyBytes))
        else:
            bodyBytes = None
        self.py_request = _RequestWithMethod(self.request.url, bodyBytes, headers, method=self.request.method)

    def run(self):
        self.runtime.events.put((self.handler.onHTTPInit, (self.request,), {}))
        try:
            handle = urllib2.urlopen(self.py_request)
            body = handle.read()
        except urllib2.URLError as exc:
            print exc
            self.runtime.events.put((self.handler.onHTTPError, (self.request,), {}))
        else:
            response = _QuarkResponse(handle.getcode(), body)
            self.runtime.events.put((self.handler.onHTTPResponse, (self.request, response), {}))

        self.runtime.events.put((self.handler.onHTTPFinal, (self.request,), {}))


class _QuarkResponse(object):

    def __init__(self, code, body):
        self.code = code
        self.body = body

    def getCode(self):
        return self.code

    def getBody(self):
        return self.body


class _QuarkWS(WebSocketClient):
    def __init__(self, runtime, url, handler):
        super(_QuarkWS, self).__init__(url)
        self.runtime = runtime
        self.url = url
        self.handler = handler

    def opened(self):
        self.runtime.events.put((self.handler.onWSInit, (self,), {}))
        self.runtime.events.put((self.handler.onWSConnected, (self,), {}))

    def received_message(self, message):
        if message.is_text:
            self.runtime.events.put((self.handler.onWSMessage, (self, unicode(message)), {}))
        else:
            self.runtime.events.put((self.handler.onWSBinary, (self, str(message)), {}))

    def closed(self, code, reason=None):
        if code == 1000:
            self.runtime.events.put((self.handler.onWSClosed, (self,), {}))
        else:
            print code
            self.runtime.events.put((self.handler.onWSError, (self,), {}))
        self.runtime.events.put((self.handler.onWSFinal, (self,), {}))

    def __str__(self):
        return "WS: %s" % self.url


class ThreadedRuntime(object):

    def __init__(self):
        self.lock = threading.Condition()
        self.events = Queue()
        self.event_thread = None

    def acquire(self):
        self.lock.acquire()

    def release(self):
        self.lock.release()

    def _notify(self):
        self.lock.notify_all()

    def wait(self):
        raise NotImplementedError()

    def open(self, url, handler):
        def pump_websocket(runtime, url, handler):
            ws = _QuarkWS(runtime, url, handler)
            ws.connect()
            ws.run_forever()
        thread = threading.Thread(target=pump_websocket, args=(self, url, handler))
        thread.setDaemon(True)
        thread.start()

    def request(self, request, handler):
        thread = _QuarkRequest(self, request, handler)
        thread.setDaemon(True)
        thread.start()

    def schedule(self, handler, delayInSeconds):
        def run_scheduled(runtime, handler, delayInSeconds):
            time.sleep(delayInSeconds)
            runtime.events.put((handler.onExecute, [runtime], {}))
        thread = threading.Thread(target=run_scheduled, args=(self, handler, delayInSeconds))
        thread.setDaemon(True)
        thread.start()

    def serveHTTP(self, url, servlet):
        raise NotImplementedError()

    def respond(self, request, response):
        raise NotImplementedError()

    def launch(self):
        assert self.event_thread is None, self.event_thread
        self.event_thread = _EventProcessor(self)
        self.event_thread.start()

    def finish(self):
        self.events.put(_EventProcessor.QUIT)
        self.event_thread.join()


_threaded_runtime = ThreadedRuntime()


def get_threaded_runtime():
    return _threaded_runtime
