# Quark's Twisted Runtime and associated

__version__ = '0.2.8'

from StringIO import StringIO
import urlparse, traceback

from quark_runtime import Buffer, _default_codec
from autobahn.twisted.websocket import WebSocketClientProtocol, WebSocketClientFactory, connectWS
from autobahn.twisted.websocket import WebSocketServerFactory, WebSocketServerProtocol
from autobahn.twisted.resource import WebSocketResource

from twisted.internet import reactor as default_reactor, ssl
from twisted.web.client import Agent, FileBodyProducer, readBody
from twisted.web.http_headers import Headers
from twisted.web import server, resource


class _QWSProtocol(object):

    def onOpen(self):
        self.factory.qws.is_open = True
        self.factory.qws.handler.onWSConnected(self.factory.qws)

    def onMessage(self, payload, isBinary):
        if isBinary:
            self.factory.qws.handler.onWSBinary(self.factory.qws, Buffer(payload))
        else:
            self.factory.qws.handler.onWSMessage(self.factory.qws, payload.decode("utf-8"))

    def onClose(self, wasClean, code, reason):
        if wasClean:
            self.factory.qws.handler.onWSClosed(self.factory.qws)
        else:
            self.factory.qws.handler.onWSError(self.factory.qws)
        self.factory.qws.handler.onWSFinal(self.factory.qws)


class _QWSCProtocol(_QWSProtocol, WebSocketClientProtocol):

    def __init__(self, *args, **kwargs):
        WebSocketClientProtocol.__init__(self, *args, **kwargs)


class _QWSSProtocol(_QWSProtocol, WebSocketServerProtocol):

    def __init__(self, *args, **kwargs):
        WebSocketServerProtocol.__init__(self, *args, **kwargs)


class _QWSCFactory(WebSocketClientFactory):

    def __init__(self, *args, **kwargs):
        WebSocketClientFactory.__init__(self, *args, **kwargs)

    def buildProtocol(self, addr):
        p = _QWSCProtocol()
        p.factory = self
        self.qws.protocol = p
        return p


class _QWSSFactory(WebSocketServerFactory):

    def __init__(self, *args, **kwargs):
        WebSocketServerFactory.__init__(self, *args, **kwargs)

    def buildProtocol(self, addr):
        p = _QWSSProtocol()
        p.factory = self
        self.qws.protocol = p
        return p


class _QuarkWebSocket(object):

    def __init__(self, factory, handler):
        factory.qws = self
        self.protocol = None  # filled in by the factory
        self.handler = handler
        self.is_open = False
        self.handler.onWSInit(self)

    def send(self, message):
        if self.is_open:
            self.protocol.sendMessage(message.encode('utf-8'), False)
            return True
        return False

    def sendBinary(self, message):
        if self.is_open:
            self.protocol.sendMessage(message.data, True)
            return True
        return False

    def close(self):
        if self.is_open:
            self.protocol.sendClose()
            return True
        return False


class _QuarkRequest(object):

    def __init__(self, agent, request, handler):
        self.request = request
        self.handler = handler
        self.response = None

        headers = {key.encode("utf-8"): [str(value).encode("utf-8")] for key, value in request.headers.items()}

        if self.request.body:
            bodyBytes = self.request.body.encode("utf-8")
            body = FileBodyProducer(StringIO(bodyBytes))
            headers["Content-Length"] = [str(len(bodyBytes))]
        else:
            body = None

        deferred = agent.request(request.method.encode("utf-8"), request.url.encode("utf-8"), Headers(headers), body)
        deferred.addCallback(self.onResponse)
        deferred.addErrback(self.onError)

        self.handler.onHTTPInit(self.request)

    def onResponse(self, response):
        self.response = response
        deferred = readBody(response)
        deferred.addCallback(self.onBody)
        deferred.addErrback(self.onError)

    def onBody(self, body):
        self.handler.onHTTPResponse(self.request, _QuarkResponse(self.response.code, body, self.response.headers))
        self.handler.onHTTPFinal(self.request)

    def onError(self, something):
        self.handler.onHTTPError(self.request, str(something))
        self.handler.onHTTPFinal(self.request)


class _QuarkResponse(object):

    def __init__(self, code, body, headers):
        self.code = code
        self.body = body
        self.headers = headers

    def getCode(self):
        return self.code

    def getBody(self):
        return self.body

    def getHeader(self, key):
        return self.headers.getRawHeaders(key, [None])[0]

    def getHeaders(self):
        return list(set(k for k,v in self.headers.getAllRawHeaders()))


class _QuarkSite(server.Site):
    def __init__(self, runtime):
        container = _ContainerResource()
        server.Site.__init__(self, container)
        self.container = container
        self.port = None
        self.hostname = None
        self.runtime = runtime

    def register(self, uri, servlet, resource):
        actual = urlparse.urlunparse((uri.scheme,
                            "%s:%s"%(self.hostname, self.port), uri.path,
                            "", "", "",))
        servlet_resource = resource(actual, servlet)
        servlet.onServletInit(actual, self.runtime)
        self.container.register(uri.path, servlet_resource)


class _ContainerResource(resource.Resource):
    isLeaf = True

    def __init__(self):
        resource.Resource.__init__(self)
        self.servlets = {}

    def render(self, request):
        delegate = self.servlets.get(request.path)
        if delegate is not None:
            return delegate.render(request)
        else:
            rs = _ServletResponse(request)
            rs.fail(404, "Not found\r\n")
            return server.NOT_DONE_YET

    def register(self, path, delegate):
        self.servlets[path] = delegate


class _HTTPServletResource:
    def __init__(self, actual, servlet):
        self.actual = actual
        self.servlet = servlet

    def render(self, request):
        rq = _ServletRequest(request)
        rs = _ServletResponse(request)
        rs.servlet_request = rq
        try:
            self.servlet.onHTTPRequest(rq, rs)
        except:
            e = traceback.format_exc()
            log.err()
            rs.fail(500, e)
        return server.NOT_DONE_YET


class _WSServletResource:
    def __init__(self, actual, servlet):
        self.actual = actual
        self.servlet = servlet

    def render(self, request):
        rq = _ServletRequest(request)
        rs = _ServletResponse(request)
        handler = self.servlet.onWSConnect(rq)
        if handler is not None:
            factory = _QWSSFactory()
            resource = WebSocketResource(factory)
            _QuarkWebSocket(factory, handler)
            return resource.render(request)
        else:
            rs.fail(403, "not happening")
            return server.NOT_DONE_YET


class _ServletRequest(object):
    def __init__(self, request):
        self.request = request

    def getUrl(self):
        return self.request.uri

    def setMethod(self, method): pass
    def getMethod(self):
        return self.request.method

    def setBody(self, body): pass
    def getBody(self):
        return self.request.content.read().decode('utf-8')

    def setHeader(self, key, value): pass
    def getHeader(self, key):
        value = self.request.getHeader(key)
        if value is None:
            return None
        return value.decode('utf-8')

    def getHeaders(self):
        return list(set(h[0].decode('utf-8') for h in self.request.requestHeaders.getAllRawHeaders()))


class _ServletResponse(object):
    def __init__(self, request):
        self.request = request
        self.code = None
        self.body = None
        self.headers = dict()

    def getCode(self):
        return self.code

    def setCode(self, code):
        self.code = code

    def getBody(self):
        return self.body

    def setBody(self, body):
        self.body = body

    def getHeader(self, key):
        return self.headers.get(key)

    def setHeader(self, key, value):
        self.headers[key] = value

    def getHeaders(self):
        return self.headers.keys()

    def respond(self):
        self.request.setResponseCode(self.code)
        for key, value in self.headers.iteritems():
            self.request.setHeader(key.encode('utf-8'), value.encode('utf-8'))
        self.request.write(self.body.encode('utf-8'))
        self.request.finish()

    def fail(self, code, message):
        self.code = code
        self.headers.clear()
        self.body = message
        self.respond()


class TwistedRuntime(object):

    def __init__(self, reactor):
        self.locked = False
        self.reactor = reactor
        self._codec = _default_codec()
        self.sites = {}

    def acquire(self):
        assert not self.locked
        self.locked = True

    def release(self):
        assert self.locked
        self.locked = False

    def wait(self, timeoutInSeconds):
        assert self.locked
        assert False

    def open(self, url, handler):
        factory = _QWSCFactory(url, debug=False)
        if factory.isSecure:
            contextFactory = ssl.ClientContextFactory()
        else:
            contextFactory = None
        connectWS(factory, contextFactory)
        _QuarkWebSocket(factory, handler)

    def request(self, request, handler):
        agent = Agent(self.reactor)
        _QuarkRequest(agent, request, handler)

    def schedule(self, handler, delayInSeconds):
        self.reactor.callLater(delayInSeconds, handler.onExecute, self)

    def serveHTTP(self, url, servlet):
        uri = urlparse.urlparse(url, "http", False)
        host = uri.hostname or "127.0.0.1"
        if uri.port is not None:
            port_no = uri.port
        else:
            port_no = dict(http=80, https=443).get(uri.scheme)
        try:
            site = self._make_site(uri.scheme, port_no, host)
        except Exception, e:
            servlet.onServletError(url, str(e))
            return
        site.register(uri, servlet, _HTTPServletResource)

    def serveWS(self, url, servlet):
        uri = urlparse.urlparse(url, "ws", False)
        host = uri.hostname or "127.0.0.1"
        if uri.port is not None:
            port_no = uri.port
        else:
            port_no = dict(ws=80, wss=443).get(uri.scheme)
        try:
            site = self._make_site(uri.scheme, port_no, host)
        except Exception, e:
            servlet.onServletError(url, str(e))
            return
        site.register(uri, servlet, _WSServletResource)

    def _make_site(self, scheme, port_no, host):
        site = self.sites.get(port_no)
        if site is not None:
            return site
        site = _QuarkSite(self)
        if scheme in ["https", "wss"]:
            # XXX: we need a certificate.... abuse url.params?
            raise Exception(scheme + " is not supported yet")
        elif scheme in ("http", "ws"):
            port = self.reactor.listenTCP(port_no, site, interface=host)
            bound = port.getHost()
            site.port = bound.port
            site.hostname = bound.host
        else:
            raise Exception("unsupported protocol")
        self.sites[site.port] = site
        return site

    def respond(self, request, response):
        if isinstance(response, _ServletResponse):
            if response.servlet_request is request:
                response.respond()
            else:
                response.fail(500, "unmatched request and response")
        else:
            # XXX: what to do with a response from a different runtime
            pass

    def fail(self, message):
        exit(message)                # Comment out this line to see a full traceback via the next line
        raise RuntimeError(message)

    def finish(self):
        self.reactor.callLater(0, self.reactor.stop)

    def codec(self):
        return self._codec

_twisted_runtime = None


def get_runtime(reactor=None):
    global _twisted_runtime
    if reactor is None:
        reactor = default_reactor
    if _twisted_runtime is None:
        _twisted_runtime = TwistedRuntime(reactor)
    else:
        assert _twisted_runtime.reactor == reactor, "Reactor mismatch! Consider using make_runtime(reactor)"
    return _twisted_runtime

getRuntime = get_runtime


def make_runtime(reactor):
    return TwistedRuntime(reactor)

makeRuntime = make_runtime
