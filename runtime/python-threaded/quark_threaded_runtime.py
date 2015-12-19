# Quark's Twisted Runtime and associated

__version__ = '0.2.8'

import atexit
import os
import sys
import threading
import time
import traceback
import urllib2
import urlparse
from wsgiref import simple_server, util
from Queue import Queue, Empty

from ws4py.client.threadedclient import WebSocketClient

from quark_runtime import _HTTPRequest, _HTTPResponse


class _Terminator(object):

    def remove(self, other):
        return

    def add(self, other):
        return

    def __nonzero__(self):
        return False


class _EventProcessor(threading.Thread):

    QUIT = ("QUIT",)

    def __init__(self, runtime):
        super(_EventProcessor, self).__init__()
        self.runtime = runtime
        self.live = set()
        self.die_now = False

    def run(self):
        startup = True
        while startup or self.live:
            if self.die_now:
                self.live = _Terminator()
            try:
                event = self.runtime.events.get(block=True, timeout=1)
            except Empty:
                continue

            self.runtime.acquire()
            try:
                while self.live:
                    if event == self.QUIT:
                        return
                    function, args, kwargs = event
                    try:
                        function(*args, **kwargs)
                    except Exception as exc:
                        print "Event handler %s failed (%s)." % (function, exc)
                        print traceback.format_exc()
                    event = self.runtime.events.get(block=False)  # Raises Empty to break out of loop
            except Empty:
                pass
            finally:
                self.runtime._notify()
                self.runtime.release()
            startup = False


# http://stackoverflow.com/questions/4511598/how-to-make-http-delete-method-using-urllib2
class _RequestWithMethod(urllib2.Request):

    def __init__(self, *args, **kwargs):
        self._method = kwargs.pop('method', None)
        urllib2.Request.__init__(self, *args, **kwargs)

    def get_method(self):
        return self._method if self._method else super(_RequestWithMethod, self).get_method()


class _QuarkRequest(threading.Thread):

    def __init__(self, runtime, request, handler, token):
        super(_QuarkRequest, self).__init__()
        self.runtime = runtime
        self.request = request
        self.handler = handler
        self.token = token
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
        except urllib2.HTTPError, e:
            response = _HTTPResponse()
            response.setCode(e.code)
            response.setBody(e.read())
            for h in e.info().headers:
                k, v = h.split(':', 1)
                response.setHeader(k, v.strip())
            self.runtime.events.put((self.handler.onHTTPResponse, (self.request, response), {}))
        except urllib2.URLError as exc:
            self.runtime.events.put((self.handler.onHTTPError, (self.request, str(exc.reason)), {}))
        else:
            response = _HTTPResponse()
            response.setCode(handle.getcode())
            response.setBody(body)
            for h in handle.info().headers:
                k, v = h.split(':', 1)
                response.setHeader(k, v.strip())
            self.runtime.events.put((self.handler.onHTTPResponse, (self.request, response), {}))

        self.runtime.events.put((self.handler.onHTTPFinal, (self.request,), {}))
        self.runtime._remove_event_source(self.token)


class _QuarkWS(WebSocketClient):
    def __init__(self, runtime, url, handler, token):
        super(_QuarkWS, self).__init__(url)
        self.runtime = runtime
        self.url = url
        self.handler = handler
        self.token = token

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
            self.runtime.events.put((self.handler.onWSError, (self,), {}))
        self.runtime.events.put((self.handler.onWSFinal, (self,), {}))
        self.runtime._remove_event_source(self.token)

    def __str__(self):
        return "WS: %s" % self.url


class _QuarkWSGIApp(object):

    def __init__(self, runtime, scheme, host, port):
        self.runtime = runtime
        self.scheme = scheme
        self.host = host
        self.port = port
        self.servlets = {}  # path -> servlet

    def call_servlet(self, servlet, request, response):
        try:
            servlet.onHTTPRequest(request, response)
        except Exception as exc:
            response.setCode(500)
            response.setBody("500 Internal Server Error (%s)\n" % exc)
            response.setHeader("Content-Type", "text/plain")
            response._responded = True
            print "Servlet call for %s failed." % request.getUrl()
            print traceback.format_exc()

    def __call__(self, environ, start_response):
        path = environ["PATH_INFO"]
        url = util.request_uri(environ)
        try:
            request_body_size = int(environ.get('CONTENT_LENGTH', 0))
        except (ValueError):
            request_body_size = 0
        request_body = environ['wsgi.input'].read(request_body_size)

        request = _HTTPRequest(url)
        request.setMethod(environ["REQUEST_METHOD"])
        request.setBody(request_body)
        request.setHeader("Content-Type", environ["CONTENT_TYPE"])
        request.setHeader("Content-Length", request_body_size)
        for key in environ:
            if key.startswith("HTTP_"):
                request.setHeader(key[5:], environ[key])
        response = _HTTPResponse()
        try:
            servlet = self.servlets[path]
        except KeyError:
            start_response("404 Not Found", [("Content-Type", "text/plain")])
            return ["404 Not Found (%r)" % path]

        self.runtime.events.put((self.call_servlet, (servlet, request, response), {}))
        try:
            self.runtime.acquire()
            while not response._responded:
                self.runtime.wait(60)
        finally:
            self.runtime.release()

        if response.code == 200:
            status = "200 OK"
        elif response.code == 500:
            status = "500 Internal Server Error"
        else:
            status = "%s Something something" % response.code
        headers = [(key.encode("utf-8"), value.encode("utf-8")) for key, value in response.headers.items()]
        start_response(status, headers)

        body = response.body.encode("utf-8")
        return [body]


class ThreadedRuntime(object):

    def __init__(self):
        self.lock = threading.Condition()
        self.events = Queue()
        self.token_counter = 0
        self.sites = {}  # host, port -> site
        self.event_thread = _EventProcessor(self)
        self.event_thread.daemon = True
        self.event_thread.start()

    def acquire(self):
        self.lock.acquire()

    def release(self):
        self.lock.release()

    def _notify(self):
        self.lock.notify_all()

    def wait(self, timeoutInSeconds):
        self.lock.wait(timeoutInSeconds)

    def _add_event_source(self):
        token = (self.token_counter, self)
        self.token_counter += 1
        self.event_thread.live.add(token)
        return token

    def _remove_event_source(self, token):
        self.events.put((self.event_thread.live.remove, (token,), {}))

    def open(self, url, handler):
        def pump_websocket(runtime, url, handler, token):
            ws = _QuarkWS(runtime, url, handler, token)
            try:
                ws.connect()
                ws.run_forever()
            except Exception:
                runtime.events.put((handler.onWSError, (ws,), {}))
                runtime.events.put((handler.onWSFinal, (ws,), {}))
                runtime._remove_event_source(token)
        try:
            self.acquire()
            thread = threading.Thread(target=pump_websocket, args=(self, url, handler, self._add_event_source()))
            thread.setDaemon(True)
            thread.start()
        finally:
            self.release()

    def request(self, request, handler):
        try:
            self.acquire()
            thread = _QuarkRequest(self, request, handler, self._add_event_source())
            thread.setDaemon(True)
            thread.start()
        finally:
            self.release()

    def schedule(self, handler, delayInSeconds):
        def run_scheduled(runtime, handler, delayInSeconds, token):
            time.sleep(delayInSeconds)
            runtime.events.put((handler.onExecute, [runtime], {}))
            runtime._remove_event_source(token)
        try:
            self.acquire()
            thread = threading.Thread(target=run_scheduled,
                                      args=(self, handler, delayInSeconds, self._add_event_source()))
            thread.setDaemon(True)
            thread.start()
        finally:
            self.release()

    def _parse_url(self, url):
        uri = urlparse.urlparse(url)
        host = uri.hostname or "127.0.0.1"
        if uri.port is not None:
            port = uri.port
        else:
            port = dict(http=80, ws=80, https=443, wss=80).get(uri.scheme)
        return uri.scheme, host, port, uri.path

    def serveHTTP(self, url, servlet):
        def launch_web_server(runtime, url, host, port, app, servlet, token):
            try:
                server = simple_server.make_server(host, port, app)
                server.serve_forever()
            except Exception as exc:
                runtime.events.put((servlet.onServletError,
                                    (url, "Failed to bind to %s:%s (%s)" % (host, port, exc)), {}))
                runtime._remove_event_source(token)
        scheme, host, port, path = self._parse_url(url)
        if scheme in ["https", "wss"]:
            self.events.put((servlet.onServletError, (url, scheme + " is not supported yet"), {}))
            return

        try:
            self.acquire()
            try:
                app = self.sites[host, port]
                if app.scheme != scheme:
                    message = "%s:%s already serving %s, cannot also serve %s" % (host, port, app.scheme, scheme)
                    self.events.put((servlet.onServletError, (url, message), {}))
                    return
            except KeyError:
                app = _QuarkWSGIApp(self, scheme, host, port)
                self.sites[host, port] = app
                thread = threading.Thread(target=launch_web_server,
                                          args=(self, url, host, port, app, servlet, self._add_event_source()))
                thread.setDaemon(True)
                thread.start()
            app.servlets[path] = servlet
            self.events.put((servlet.onServletInit, (url, self), {}))
        finally:
            self.release()

    def serveWS(self, url, servlet):
        scheme, host, port, path = self._parse_url(url)
        raise NotImplementedError()

    def respond(self, request, response):
        response._responded = True

    def fail(self, message):
        self.event_thread.die_now = True
        if False:  # Set to True to enable traceback printing
            print "Traceback (most recent call last, up to fail(...)):"
            traceback.print_stack(sys._getframe(1))
            # Note: sys._getframe(1) works on CPython, Jython, and PyPy. Need to test on IronPython etc.
        sys.stderr.write(message + "\n")
        os._exit(1)


_global_lock = threading.Lock()
_threaded_runtime = None


def get_runtime():
    global _threaded_runtime
    with _global_lock:
        if _threaded_runtime is None:
            _threaded_runtime = ThreadedRuntime()
    return _threaded_runtime


getRuntime = get_runtime


@atexit.register
def wait_for_completion():
    if _threaded_runtime is None:
        return
    try:
        while _threaded_runtime.event_thread.live:
            time.sleep(1)
    except KeyboardInterrupt:
        pass
