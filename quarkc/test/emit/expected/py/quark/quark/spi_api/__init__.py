from quark_runtime import *

import quark.reflect
import quark
import quark_md
import quark.concurrent


class ServletProxy(object):
    def _init(self):
        self.servlet_impl = None
        self.real_runtime = None

    def __init__(self, real_runtime, servlet_impl):
        self._init()
        (self).real_runtime = real_runtime
        (self).servlet_impl = servlet_impl

    def onServletInit(self, url, runtime):
        (self.servlet_impl).onServletInit(url, self.real_runtime);

    def onServletError(self, url, error):
        (self.servlet_impl).onServletError(url, error);

    def onServletEnd(self, url):
        (self.servlet_impl).onServletEnd(url);

    def _getClass(self):
        return u"quark.spi_api.ServletProxy"

    def _getField(self, name):
        if ((name) == (u"servlet_impl")):
            return (self).servlet_impl

        if ((name) == (u"real_runtime")):
            return (self).real_runtime

        return None

    def _setField(self, name, value):
        if ((name) == (u"servlet_impl")):
            (self).servlet_impl = value

        if ((name) == (u"real_runtime")):
            (self).real_runtime = value


ServletProxy.quark_spi_api_ServletProxy_ref = quark_md.Root.quark_spi_api_ServletProxy_md
class HTTPServletProxy(ServletProxy):
    def _init(self):
        ServletProxy._init(self)
        self.http_servlet_impl = None

    def __init__(self, real_runtime, http_servlet_impl):
        super(HTTPServletProxy, self).__init__(real_runtime, http_servlet_impl);
        (self).http_servlet_impl = http_servlet_impl

    def onHTTPRequest(self, request, response):
        (self.http_servlet_impl).onHTTPRequest(request, response);

    def _getClass(self):
        return u"quark.spi_api.HTTPServletProxy"

    def _getField(self, name):
        if ((name) == (u"servlet_impl")):
            return (self).servlet_impl

        if ((name) == (u"real_runtime")):
            return (self).real_runtime

        if ((name) == (u"http_servlet_impl")):
            return (self).http_servlet_impl

        return None

    def _setField(self, name, value):
        if ((name) == (u"servlet_impl")):
            (self).servlet_impl = value

        if ((name) == (u"real_runtime")):
            (self).real_runtime = value

        if ((name) == (u"http_servlet_impl")):
            (self).http_servlet_impl = value

    def serveHTTP(self, url):
        (quark.concurrent.Context.runtime()).serveHTTP(url, self);

HTTPServletProxy.quark_spi_api_HTTPServletProxy_ref = quark_md.Root.quark_spi_api_HTTPServletProxy_md
class WSServletProxy(ServletProxy):
    def _init(self):
        ServletProxy._init(self)
        self.ws_servlet_impl = None

    def __init__(self, real_runtime, ws_servlet_impl):
        super(WSServletProxy, self).__init__(real_runtime, ws_servlet_impl);
        (self).ws_servlet_impl = ws_servlet_impl

    def onWSConnect(self, upgradeRequest):
        return (self.ws_servlet_impl).onWSConnect(upgradeRequest)

    def _getClass(self):
        return u"quark.spi_api.WSServletProxy"

    def _getField(self, name):
        if ((name) == (u"servlet_impl")):
            return (self).servlet_impl

        if ((name) == (u"real_runtime")):
            return (self).real_runtime

        if ((name) == (u"ws_servlet_impl")):
            return (self).ws_servlet_impl

        return None

    def _setField(self, name, value):
        if ((name) == (u"servlet_impl")):
            (self).servlet_impl = value

        if ((name) == (u"real_runtime")):
            (self).real_runtime = value

        if ((name) == (u"ws_servlet_impl")):
            (self).ws_servlet_impl = value

    def serveWS(self, url):
        (quark.concurrent.Context.runtime()).serveWS(url, self);

WSServletProxy.quark_spi_api_WSServletProxy_ref = quark_md.Root.quark_spi_api_WSServletProxy_md
class TaskProxy(object):
    def _init(self):
        self.task_impl = None
        self.real_runtime = None

    def __init__(self, real_runtime, task_impl):
        self._init()
        (self).task_impl = task_impl
        (self).real_runtime = real_runtime

    def onExecute(self, runtime):
        (self.task_impl).onExecute(self.real_runtime);

    def _getClass(self):
        return u"quark.spi_api.TaskProxy"

    def _getField(self, name):
        if ((name) == (u"task_impl")):
            return (self).task_impl

        if ((name) == (u"real_runtime")):
            return (self).real_runtime

        return None

    def _setField(self, name, value):
        if ((name) == (u"task_impl")):
            (self).task_impl = value

        if ((name) == (u"real_runtime")):
            (self).real_runtime = value


TaskProxy.quark_spi_api_TaskProxy_ref = quark_md.Root.quark_spi_api_TaskProxy_md
class RuntimeProxy(object):
    def _init(self):
        self.impl = None

    def __init__(self, impl):
        self._init()
        (self).impl = impl

    def open(self, url, handler):
        (self.impl).open(url, handler);

    def request(self, request, handler):
        (self.impl).request(request, handler);

    def schedule(self, handler, delayInSeconds):
        (self.impl).schedule(TaskProxy(self, handler), delayInSeconds);

    def codec(self):
        return (self.impl).codec()

    def serveHTTP(self, url, servlet):
        (self.impl).serveHTTP(url, HTTPServletProxy(self, servlet));

    def serveWS(self, url, servlet):
        (self.impl).serveWS(url, WSServletProxy(self, servlet));

    def respond(self, request, response):
        (self.impl).respond(request, response);

    def fail(self, message):
        (self.impl).fail(message);

    def logger(self, topic):
        return (self.impl).logger(topic)

    def _getClass(self):
        return u"quark.spi_api.RuntimeProxy"

    def _getField(self, name):
        if ((name) == (u"impl")):
            return (self).impl

        return None

    def _setField(self, name, value):
        if ((name) == (u"impl")):
            (self).impl = value


RuntimeProxy.quark_spi_api_RuntimeProxy_ref = quark_md.Root.quark_spi_api_RuntimeProxy_md
