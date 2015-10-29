# Quark's Twisted Runtime and associated

from autobahn.twisted.websocket import WebSocketClientProtocol, WebSocketClientFactory
from autobahn.websocket.protocol import parseWsUrl

from twisted.internet import defer, reactor
from twisted.python import log


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
        for message in self.factory.qws.buffered:
            self.sendMessage(message)
        self.factory.qws.buffered = None

    def onMessage(self, payload, isBinary):
        self.factory.qws.handler.onMessage(self, payload)


class _QWSCFactory(WebSocketClientFactory):

    def buildProtocol(self, addr):
        p = _QWSCProtocol()
        p.factory = self
        self.qws.protocol = p
        return p


class _QuarkWebSocket(WebSocketClientProtocol):

    def __init__(self, factory):
        factory.qws = self
        self.protocol = None  # filled in by the factory
        self.handler = None
        self.is_open = []
        self.buffered = []

    def setHandler(self, handler):
        self.handler = handler

    def send(self, message):
        if self.is_open:
            self.protocol.sendMessage(message)
        else:
            self.buffered.append(message)


class Runtime(object):

    def __init__(self, reactor):
        self.locked = False
        self.reactor = reactor

    def acquire(self):
        assert not self.locked
        self.locked = True

    def release(self):
        assert self.locked
        self.locked = False

    def wait(self):
        # FIXME This is just a yield
        assert self.locked
        d = defer.Deferred()
        self.reactor.callLater(0.0, d.callback, None)
        self.release()
        yield d
        self.acquire()

    def open(self, url):
        is_secure, host, port, resource, path, params = parseWsUrl(url)
        factory = _QWSCFactory(url, debug=False)
        self.reactor.connectTCP(host, port, factory)
        return _QuarkWebSocket(factory)

    def schedule(self, handler, delayInSeconds):
        self.reactor.callLater(delayInSeconds, lambda _: handler.onExecute(self), None)

    def launch(self):
        self.reactor.run()


runtime = Runtime(reactor)
