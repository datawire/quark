from quark_runtime import *

import quark.reflect
import quark
import quark_md
import quark.spi_api_tracing
import quark.spi_api


class RuntimeSpi(object):
    pass
RuntimeSpi.quark_spi_RuntimeSpi_ref = quark_md.Root.quark_spi_RuntimeSpi_md
class RuntimeFactory(object):
    def _init(self):
        pass
    def __init__(self): self._init()

    def makeRuntime(self):
        spi = _RuntimeFactory.create();
        api = None;
        if (RuntimeFactory.enable_tracing):
            api = quark.spi_api_tracing.RuntimeProxy(spi)
        else:
            api = quark.spi_api.RuntimeProxy(spi)

        return api

    def _getClass(self):
        return u"quark.spi.RuntimeFactory"

    def _getField(self, name):
        if ((name) == (u"factory")):
            return RuntimeFactory.factory

        if ((name) == (u"enable_tracing")):
            return RuntimeFactory.enable_tracing

        return None

    def _setField(self, name, value):
        if ((name) == (u"factory")):
            RuntimeFactory.factory = value

        if ((name) == (u"enable_tracing")):
            RuntimeFactory.enable_tracing = value


RuntimeFactory.factory = RuntimeFactory()
RuntimeFactory.enable_tracing = True
RuntimeFactory.quark_spi_RuntimeFactory_ref = quark_md.Root.quark_spi_RuntimeFactory_md
