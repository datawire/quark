# Quark's Twisted Runtime and associated

__version__ = '0.1.16'

from StringIO import StringIO

from quark_runtime import Buffer
from autobahn.twisted.websocket import WebSocketClientProtocol, WebSocketClientFactory, connectWS

from twisted.internet import defer, reactor, ssl
from twisted.python import log
from twisted.web.client import Agent, FileBodyProducer, readBody
from twisted.web.http_headers import Headers


def _dumper(reason):
    log.err(reason, "From the future!")
    return reason


class Future(object):

    def __init__(self):
        self.deferred = defer.Deferred()
        self.deferred.addErrback(_dumper)

    def succeed(self, value):
        self.deferred.callback(value)

    def fail(self, reason):
        self.deferred.errback(Exception(reason))

    def getResult(self, callback, errback=None):
        if errback:
            self.deferred.addErrback(errback)
        self.deferred.addCallback(callback)


class _QWSCProtocol(WebSocketClientProtocol):

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


class _QWSCFactory(WebSocketClientFactory):

    def buildProtocol(self, addr):
        p = _QWSCProtocol()
        p.factory = self
        self.qws.protocol = p
        return p


class _QuarkWebSocket(WebSocketClientProtocol):

    def __init__(self, factory, handler):
        factory.qws = self
        self.protocol = None  # filled in by the factory
        self.handler = handler
        self.is_open = False
        self.handler.onWSInit(self)

    def send(self, message):
        if self.is_open:
            self.protocol.sendMessage(message.encode('utf-8'), False)
            return 1
        return 0

    def sendBinary(self, message):
        if self.is_open:
            self.protocol.sendMessage(message.data, True)
            return 1
        return 0


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
        self.handler.onHTTPResponse(self.request, _QuarkResponse(self.response.code, body))
        self.handler.onHTTPFinal(self.request)

    def onError(self, something):
        self.handler.onHTTPError(self.request)
        self.handler.onHTTPFinal(self.request)


class _QuarkResponse(object):

    def __init__(self, code, body):
        self.code = code
        self.body = body

    def getCode(self):
        return self.code

    def getBody(self):
        return self.body


class TwistedRuntime(object):

    def __init__(self, reactor):
        self.locked = False
        self.reactor = reactor

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

    def launch(self):
        self.reactor.run()

    def finish(self):
        self.reactor.callLater(0, self.reactor.stop)


_twisted_runtime = TwistedRuntime(reactor)


def get_twisted_runtime():
    return _twisted_runtime


def make_twisted_runtime():
    return TwistedRuntime(reactor)


import threading


class ThreadedRuntime(object):

    def __init__(self, reactor):
        self.lock = threading.Condition()
        self.tw = TwistedRuntime(reactor)

    def acquire(self):
        self.lock.acquire()

    def release(self):
        self.lock.release()

    def _notify(self):
        self.lock.acquire()
        self.lock.notify_all()
        self.lock.release()

    def wait(self, timeoutInSeconds):
        self.tw.reactor.callLater(0, self._notify)
        self.lock.wait()

    def open(self, url, handler):
        self.tw.open(url, handler)

    def request(self, request, handler):
        self.tw.request(request, handler)

    def schedule(self, handler, delayInSeconds):
        return self.tw.schedule(handler, delayInSeconds)

    def launch(self):
        threading.Thread(target=self.tw.reactor.run, args=(False,)).start()  # False: Don't try to install sig handlers

    def finish(self):
        self.tw.reactor.callLater(0, self.tw.reactor.stop)


_threaded_runtime = ThreadedRuntime(reactor)


def get_threaded_runtime():
    return _threaded_runtime


def make_threaded_runtime():
    return ThreadedRuntime(reactor)
