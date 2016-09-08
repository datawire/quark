# Quark's Threaded Runtime

from __future__ import print_function

__version__ = '0.4.2'

from past.builtins import unicode, long

import atexit
import os
import sys
import threading
import contextlib
import time
import traceback

# future stdlib stuff is broken: https://github.com/PythonCharmers/python-future/issues/238
try:
    from urllib.request import Request, urlopen
    from urllib.error import HTTPError, URLError
    from urllib.parse import urlparse
    from queue import Queue, Empty
except ImportError:
    from urllib2 import Request, urlopen, HTTPError, URLError
    from urlparse import urlparse
    from Queue import Queue, Empty

import uuid
from wsgiref import util

import ws4py
if ws4py.__version__ != "0.3.4":
    from ws4py.server.wsgirefserver import WebSocketWSGIRequestHandler as _QuarkWSGIRequestHandler
else:
    from quark_ws4py_fixup import WebSocketWSGIRequestHandler as _QuarkWSGIRequestHandler
from ws4py.client.threadedclient import WebSocketClient
from ws4py.server.wsgirefserver import WSGIServer as _QuarkWSGIServer
from ws4py.server.wsgiutils import WebSocketWSGIApplication
from ws4py.websocket import WebSocket
from ws4py.exc import HandshakeError

from quark_runtime import _HTTPRequest, _HTTPResponse, _default_codec, Buffer
from quark_runtime_logging import Logger

class _Terminator(object):

    def remove(self, other):
        return

    def add(self, other):
        return

    def __nonzero__(self):
        return False

    def __bool__(self):
        return False


class _EventProcessor(threading.Thread):

    QUIT = ("QUIT",)

    def __init__(self, runtime):
        super(_EventProcessor, self).__init__()
        self.runtime = runtime
        self.live = set()
        self.token_lock = threading.Lock()
        self.die_now = False

    @property
    def is_live(self):
        with self.token_lock:
            return bool(self.live)

    def run(self):
        main_thread_running = True
        while main_thread_running or self.is_live:
            if self.die_now:
                with self.token_lock:
                    self.live = _Terminator()
            try:
                event = self.runtime.events.get(block=True, timeout=1)
            except Empty:
                continue

            self.runtime.acquire()
            try:
                while self.is_live:
                    if event == self.QUIT:
                        return
                    function, args, kwargs = event
                    try:
                        function(*args, **kwargs)
                    except Exception as exc:
                        print("Event handler %s failed (%s)." % (function, exc))
                        print(traceback.format_exc())
                    event = self.runtime.events.get(block=False)  # Raises Empty to break out of loop
            except Empty:
                pass
            finally:
                self.runtime._notify()
                self.runtime.release()


# http://stackoverflow.com/questions/4511598/how-to-make-http-delete-method-using-urllib2
class _RequestWithMethod(Request):

    def __init__(self, *args, **kwargs):
        self._method = kwargs.pop('method', None)
        Request.__init__(self, *args, **kwargs)

    def get_method(self):
        return self._method if self._method else super(_RequestWithMethod, self).get_method()


class _QuarkRequest(object):

    def __init__(self, runtime, request, handler):
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

    def __call__(self):
        self.runtime.events.put((self.handler.onHTTPInit, (self.request,), {}))
        try:
            handle = urlopen(self.py_request)
            body = handle.read()
        except HTTPError as e:
            response = _HTTPResponse()
            response.setCode(e.code)
            response.setBody(e.read().decode('utf-8'))
            for k,v in e.info().items():
                response.setHeader(k, v.strip())
            self.runtime.events.put((self.handler.onHTTPResponse, (self.request, response), {}))
        except URLError as exc:
            import quark
            self.runtime.events.put((self.handler.onHTTPError, (self.request, quark.HTTPError(str(exc.reason))), {}))
        except Exception as exc:
            import quark
            self.runtime.events.put((self.handler.onHTTPError, (self.request, quark.HTTPError(str(exc))), {}))
        else:
            response = _HTTPResponse()
            response.setCode(handle.getcode())
            response.setBody(body.decode('utf-8'))
            for k,v in handle.info().items():
                response.setHeader(k, v.strip())
            self.runtime.events.put((self.handler.onHTTPResponse, (self.request, response), {}))

        self.runtime.events.put((self.handler.onHTTPFinal, (self.request,), {}))

class _QuarkWSAdapter(object):
    def __init__(self, ws):
        self.ws = ws

    def send(self, message):
        ws = self.ws
        if ws is not None:
            ws.send(message)

    def sendBinary(self, buffer):
        ws = self.ws
        if ws is not None:
            ws.send(buffer.data, binary=True)

    def close(self):
        ws = self.ws
        if ws is not None:
            ws.close()

class _QuarkWSMixin(object):

    def _quark_init(self, runtime, handler):
        self.runtime = runtime
        self.handler = handler
        self.ws = _QuarkWSAdapter(self)
        self.runtime.events.put((self.handler.onWSInit, (self.ws,), {}))

    def opened(self):
        self.runtime.events.put((self.handler.onWSConnected, (self.ws,), {}))

    def received_message(self, message):
        if message.is_text:
            self.runtime.events.put((self.handler.onWSMessage, (self.ws, unicode(message)), {}))
        else:
            self.runtime.events.put((self.handler.onWSBinary, (self.ws, Buffer(message.data)), {}))

    def closed(self, code, reason=None):
        if code in (1000, 1006):
            self.runtime.events.put((self.handler.onWSClosed, (self.ws,), {}))
        else:
            import quark
            self.runtime.events.put((self.handler.onWSError, (self.ws, quark.WSError("%s %s" % (code, reason))), {}))
        self.runtime.events.put((self.handler.onWSFinal, (self.ws,), {}))
        # After we get the closed callback we can clean up the
        # websocket adapter immediately
        self.ws.ws = None
        self.ws = None

class _QuarkServerWS(_QuarkWSMixin, WebSocket):
    def _quark_init(self, runtime, handler):
        super(_QuarkServerWS, self)._quark_init(runtime, handler)
        self.token = self.runtime._add_event_source("server websocket")

    def closed(self, *args, **kwargs):
        super(_QuarkServerWS, self).closed(*args, **kwargs)
        self.runtime._remove_event_source(self.token)

class _QuarkWS(_QuarkWSMixin, WebSocketClient):
    def __init__(self, runtime, url, handler):
        self._quark_init(runtime, handler)
        super(_QuarkWS, self).__init__(url)
        self.url = url

    def __str__(self):
        return "WS: %s" % self.url

    def run(self):
        try:
            super(_QuarkWS, self).run()
        except Exception as ex:
            self.runtime.log.debug("Caught ws4py exception %s in handler for %s:\n%s" %
                                   (ex, self.url, "".join(traceback.format_stack())))

class _QuarkWSGIApp(object):

    def __init__(self, runtime, url):
        self.runtime = runtime
        self.url = url
        self.servlets = {}  # path -> servlet
        self.lock = threading.Condition()

    def call_servlet(self, servlet, request, response):
        try:
            servlet.call_servlet(request, response)
        except Exception as exc:
            servlet.fail(response, 500, "500 Internal Server Error (%s)\r\n" % exc)
            print("Servlet call for %s failed." % request.getUrl())
            print(traceback.format_exc())

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

        with self.lock:
            servlet = self.servlets.get(path, None)
        if servlet is None:
            start_response("404 Not Found", [("Content-Type", "text/plain")])
            yield "404 Not Found (%r)" % path
            return

        self.runtime.events.put((self.call_servlet, (servlet, request, response), {}))
        try:
            self.runtime.acquire()
            while not response._responded:
                self.runtime.wait(60)
        finally:
            self.runtime.release()

        for chunk in servlet.respond(environ, start_response, request, response):
            yield chunk

    def add(self, servlet):
        servlet.url.port = self.url.port
        if servlet.servlet is not None:
            self.runtime.events.put((servlet.servlet.onServletInit, (servlet.url.url, self.runtime), {}))
        with self.lock:
            old = self.servlets.pop(servlet.url.path, None)
            if servlet.servlet is not None:
                self.servlets[servlet.url.path] = servlet
        if old is not None:
            self.runtime.events.put((old.servlet.onServletEnd, (old.url.url, ), {}))


class HttpServletAdapter(object):
    def __init__(self, runtime, url, servlet):
        self.runtime = runtime
        self.url = url
        self.servlet = servlet

    def call_servlet(self, request, response):
        self.servlet.onHTTPRequest(request, response)

    def fail(self, response, code, body):
        response.setCode(code)
        response.setBody(body)
        response.setHeader("Content-Type", "text/plain")
        response._responded = True

    def respond(self, environ, start_response, request, response):
        if response.code == 200:
            status = "200 OK"
        elif response.code == 500:
            status = "500 Internal Server Error"
        else:
            status = "%s Something something" % response.code
        headers = [(key.encode("utf-8"), value.encode("utf-8")) for key, value in response.headers.items()]
        body = response.body.encode("utf-8")
        headers.append(("Content-Length", str(len(body))))
        start_response(status, headers)

        yield body

class WSServletAdapter(HttpServletAdapter):

    def call_servlet(self, request, response):
        handler = self.servlet.onWSConnect(request)
        response._ws_handler = handler
        response._responded = True


    def respond(self, environ, start_response, request, response):
        if response._ws_handler is None:
            self.fail(response, 403, "Fobidden\r\n")
        else:
            handler = response._ws_handler
            def ws_factory(*args, **kwargs):
                ws = _QuarkServerWS(*args, **kwargs)
                ws._quark_init(self.runtime, handler)
                return ws
            try:
                handshaker = WebSocketWSGIApplication(handler_cls=ws_factory)
                return handshaker(environ, start_response)
            except HandshakeError as exc:
                self.fail(response, 400, str(exc))
        return super(WSServletAdapter,self).respond(environ, start_response, request, response)

class Tracker(object):
    def __init__(self, runtime, name, target):
        self.runtime = runtime
        self.name = name
        self.target = target
        self.token = self.runtime._add_event_source(self.name)

    def __call__(self, *args, **kwargs):
        try:
            with self._token():
                self.target(*args, **kwargs)
        except:
            print(traceback.format_exc())

    @contextlib.contextmanager
    def _token(self):
        yield
        self.runtime._remove_event_source(self.token)

class _NoApplication(object):
    def __init__(self, runtime, url, exc):
        self.runtime = runtime
        self.url = url
        self.exc = exc

    def add(self, servlet):
        import quark
        self.runtime.events.put((servlet.servlet.onServletError,
                (servlet.url.url, quark.ServletError("Failed to bind to %s:%s (%s)" % (self.url.host, self.url.port, self.exc))), {}))

class Url(object):
    def __init__(self, url):
        self.url = url
        self.uri = urlparse(url)
        self.host = self.uri.hostname or "127.0.0.1"
        if self.uri.port is not None:
            self.port = self.uri.port
        else:
            self.port = dict(http=80, ws=80, https=443, wss=80).get(self.uri.scheme)
        self.path = self.uri.path
        self.scheme = self.uri.scheme
        self.is_secure = self.uri.scheme in ["https", "wss"]

    def __str__(self):
        return "%s %s:%s" % (self.url, self.host, self.port)

class ThreadedRuntime(object):


    def __init__(self):
        self._codec = _default_codec()
        self.lock = threading.Condition()
        self.events = Queue()
        self.token_counter = 0
        self.sites = {}  # host, port -> site
        self.event_thread = _EventProcessor(self)
        self.event_thread.daemon = True
        self.event_thread.start()
        self._codec = _default_codec()
        self.log = Logger("quark.runtime")

    def acquire(self):
        self.lock.acquire()

    def release(self):
        self.lock.release()

    def _notify(self):
        self.lock.notify_all()

    def wait(self, timeoutInSeconds):
        self.lock.wait(timeoutInSeconds)

    def _add_event_source(self, name):
        with self.event_thread.token_lock:
            token = (self.token_counter, name, self)
            self.token_counter += 1
            self.event_thread.live.add(token)
        return token

    def _remove_event_source(self, token):
        def remove_token():
            with self.event_thread.token_lock:
                self.event_thread.live.remove(token)
        self.events.put((remove_token, (), {}))

    def open(self, url, handler):
        def pump_websocket(runtime, url, handler):
            ws = _QuarkWS(runtime, url, handler)
            try:
                ws.connect()
                ws.run_forever()
            except Exception as ex:
                runtime.log.debug("websocket pump exception: %s" % ex)
                import quark
                runtime.events.put((handler.onWSError, (ws, quark.WSError(str(ex))), {}))
                runtime.events.put((handler.onWSFinal, (ws,), {}))
        try:
            self.acquire()
            thread = threading.Thread(target=Tracker(self, "client websocket", pump_websocket), args=(self, url, handler))
            thread.setDaemon(True)
            thread.start()
        finally:
            self.release()

    def request(self, request, handler):
        try:
            self.acquire()
            thread = threading.Thread(target=Tracker(self, "request", _QuarkRequest(self, request, handler)))
            thread.setDaemon(True)
            thread.start()
        finally:
            self.release()

    def schedule(self, handler, delayInSeconds):
        def run_scheduled(runtime, handler, delayInSeconds):
            time.sleep(delayInSeconds)
            runtime.events.put((handler.onExecute, [runtime], {}))
        try:
            self.acquire()
            thread = threading.Thread(target=Tracker(self, "task", run_scheduled),
                                      args=(self, handler, delayInSeconds))
            thread.setDaemon(True)
            thread.start()
        finally:
            self.release()

    def serveHTTP(self, url, servlet):
        url = Url(url)
        import quark
        if url.scheme not in ["http", "https"]:
            self.events.put((servlet.onServletError, (url.url, quark.ServletError(url.scheme + " is not supported")), {}))
            return
        if url.scheme in ["https"]:
            self.events.put((servlet.onServletError, (url.url, quark.ServletError(url.scheme + " is not supported yet")), {}))
            return
        container = self._make_container(url)
        container.add(HttpServletAdapter(self, url, servlet))

    def serveWS(self, url, servlet):
        url = Url(url)
        import quark
        if url.scheme not in ["ws", "wss"]:
            self.events.put((servlet.onServletError, (url.url, quark.ServletError(url.scheme + " is not supported")), {}))
            return
        if url.scheme in ["wss"]:
            self.events.put((servlet.onServletError, (url.url, quark.ServletError(url.scheme + " is not supported yet")), {}))
            return
        container = self._make_container(url)
        container.add(WSServletAdapter(self, url, servlet))

    def _make_container(self, url):
        try:
            with self.lock:
                server = self.sites.get((url.host, url.port))
                if not server:
                    # synchronous bind and listen...
                    server = _QuarkWSGIServer((url.host, url.port), _QuarkWSGIRequestHandler)
                    url.port = server.server_port
                    app = _QuarkWSGIApp(self, url)
                    server.set_app(app)
                    server.initialize_websockets_manager()
                    thread = threading.Thread(target = Tracker(self, "container", server.serve_forever))
                    thread.setDaemon(True)
                    thread.start()
                    self.sites[url.host, url.port] = server
                return server.application
        except Exception as exc:
            print(traceback.format_exc())
            return _NoApplication(self, url, exc)

    def respond(self, request, response):
        response._responded = True

    def fail(self, message):
        self.event_thread.die_now = True
        if False:  # Set to True to enable traceback printing
            print("Traceback (most recent call last, up to fail(...)):")
            traceback.print_stack(sys._getframe(1))
            # Note: sys._getframe(1) works on CPython, Jython, and PyPy. Need to test on IronPython etc.
        sys.stderr.write(message + "\n")
        os._exit(1)

    def codec(self):
        return self._codec

    def logger(self, topic):
        return Logger(topic)

    def now(self):
        return long(time.time() * 1000)

    def sleep(self, seconds):
        time.sleep(seconds)

    def uuid(self):
        return str(uuid.uuid4())

    def callSafely(self, unary_callable, default):
        try:
            import quark
            return quark.callUnaryCallable(unary_callable, None)
        except:
            self.log.error("Exception while calling safely: "
                           + traceback.format_exc())
            return default

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
    _threaded_runtime.event_thread.main_thread_running = False
    try:
        while _threaded_runtime.event_thread.is_live:
            time.sleep(1)
    except KeyboardInterrupt:
        pass
