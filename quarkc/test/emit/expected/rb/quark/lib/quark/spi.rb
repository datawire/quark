module Quark
def self.quark; Quark; end
module Quark
def self.spi; Spi; end
module Spi
require_relative 'reflect' # 1 () ()
require_relative '../quark' # 0 () ('quark',)
require_relative '../quark_md' # 0 () ('quark',)
require_relative 'concurrent' # 1 () ()


def self.RuntimeSpi; RuntimeSpi; end
class RuntimeSpi < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_spi_RuntimeSpi_ref: -> { ::Quark.quark_md.Root.quark_spi_RuntimeSpi_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def __init_fields__()
        

        nil
    end


end
RuntimeSpi.unlazy_statics

def self.ServletProxy; ServletProxy; end
class ServletProxy < ::DatawireQuarkCore::QuarkObject
    attr_accessor :servlet_impl, :real_runtime
    extend ::DatawireQuarkCore::Static

    static quark_spi_ServletProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_ServletProxy_md }



    def initialize(real_runtime, servlet_impl)
        
        self.__init_fields__
        (self).real_runtime = real_runtime
        (self).servlet_impl = servlet_impl

        nil
    end




    def onServletInit(url, runtime)
        
        @servlet_impl.onServletInit(url, @real_runtime)

        nil
    end

    def onServletError(url, error)
        
        @servlet_impl.onServletError(url, error)

        nil
    end

    def onServletEnd(url)
        
        @servlet_impl.onServletEnd(url)

        nil
    end

    def _getClass()
        
        return "quark.spi.ServletProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("servlet_impl"))
            return (self).servlet_impl
        end
        if ((name) == ("real_runtime"))
            return (self).real_runtime
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("servlet_impl"))
            (self).servlet_impl = value
        end
        if ((name) == ("real_runtime"))
            (self).real_runtime = value
        end

        nil
    end

    def __init_fields__()
        
        self.servlet_impl = nil
        self.real_runtime = nil

        nil
    end


end
ServletProxy.unlazy_statics

def self.HTTPServletProxy; HTTPServletProxy; end
class HTTPServletProxy < ::Quark.quark.spi.ServletProxy
    attr_accessor :http_servlet_impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_HTTPServletProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_HTTPServletProxy_md }



    def initialize(real_runtime, http_servlet_impl)
        
        super(real_runtime, http_servlet_impl)
        (self).http_servlet_impl = http_servlet_impl

        nil
    end




    def onHTTPRequest(request, response)
        
        @http_servlet_impl.onHTTPRequest(request, response)

        nil
    end

    def _getClass()
        
        return "quark.spi.HTTPServletProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("servlet_impl"))
            return (self).servlet_impl
        end
        if ((name) == ("real_runtime"))
            return (self).real_runtime
        end
        if ((name) == ("http_servlet_impl"))
            return (self).http_servlet_impl
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("servlet_impl"))
            (self).servlet_impl = value
        end
        if ((name) == ("real_runtime"))
            (self).real_runtime = value
        end
        if ((name) == ("http_servlet_impl"))
            (self).http_servlet_impl = value
        end

        nil
    end

    def serveHTTP(url)
        
        ::Quark.quark.concurrent.Context.runtime().serveHTTP(url, self)

        nil
    end

    def __init_fields__()
        
        super
        self.http_servlet_impl = nil

        nil
    end


end
HTTPServletProxy.unlazy_statics

def self.WSServletProxy; WSServletProxy; end
class WSServletProxy < ::Quark.quark.spi.ServletProxy
    attr_accessor :ws_servlet_impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_WSServletProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_WSServletProxy_md }



    def initialize(real_runtime, ws_servlet_impl)
        
        super(real_runtime, ws_servlet_impl)
        (self).ws_servlet_impl = ws_servlet_impl

        nil
    end




    def onWSConnect(upgradeRequest)
        
        return @ws_servlet_impl.onWSConnect(upgradeRequest)

        nil
    end

    def _getClass()
        
        return "quark.spi.WSServletProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("servlet_impl"))
            return (self).servlet_impl
        end
        if ((name) == ("real_runtime"))
            return (self).real_runtime
        end
        if ((name) == ("ws_servlet_impl"))
            return (self).ws_servlet_impl
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("servlet_impl"))
            (self).servlet_impl = value
        end
        if ((name) == ("real_runtime"))
            (self).real_runtime = value
        end
        if ((name) == ("ws_servlet_impl"))
            (self).ws_servlet_impl = value
        end

        nil
    end

    def serveWS(url)
        
        ::Quark.quark.concurrent.Context.runtime().serveWS(url, self)

        nil
    end

    def __init_fields__()
        
        super
        self.ws_servlet_impl = nil

        nil
    end


end
WSServletProxy.unlazy_statics

def self.TaskProxy; TaskProxy; end
class TaskProxy < ::DatawireQuarkCore::QuarkObject
    attr_accessor :task_impl, :real_runtime
    extend ::DatawireQuarkCore::Static

    static quark_spi_TaskProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_TaskProxy_md }



    def initialize(real_runtime, task_impl)
        
        self.__init_fields__
        (self).task_impl = task_impl
        (self).real_runtime = real_runtime

        nil
    end




    def onExecute(runtime)
        
        @task_impl.onExecute(@real_runtime)

        nil
    end

    def _getClass()
        
        return "quark.spi.TaskProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("task_impl"))
            return (self).task_impl
        end
        if ((name) == ("real_runtime"))
            return (self).real_runtime
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("task_impl"))
            (self).task_impl = value
        end
        if ((name) == ("real_runtime"))
            (self).real_runtime = value
        end

        nil
    end

    def __init_fields__()
        
        self.task_impl = nil
        self.real_runtime = nil

        nil
    end


end
TaskProxy.unlazy_statics

def self.RuntimeApi; RuntimeApi; end
class RuntimeApi < ::DatawireQuarkCore::QuarkObject
    attr_accessor :impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_RuntimeApi_ref: -> { ::Quark.quark_md.Root.quark_spi_RuntimeApi_md }



    def initialize(impl)
        
        self.__init_fields__
        (self).impl = impl

        nil
    end




    def open(url, handler)
        
        @impl.open(url, handler)

        nil
    end

    def request(request, handler)
        
        @impl.request(request, handler)

        nil
    end

    def schedule(handler, delayInSeconds)
        
        @impl.schedule(::Quark.quark.spi.TaskProxy.new(self, handler), delayInSeconds)

        nil
    end

    def codec()
        
        return @impl.codec()

        nil
    end

    def serveHTTP(url, servlet)
        
        @impl.serveHTTP(url, ::Quark.quark.spi.HTTPServletProxy.new(self, servlet))

        nil
    end

    def serveWS(url, servlet)
        
        @impl.serveWS(url, ::Quark.quark.spi.WSServletProxy.new(self, servlet))

        nil
    end

    def respond(request, response)
        
        @impl.respond(request, response)

        nil
    end

    def fail(message)
        
        @impl.fail(message)

        nil
    end

    def logger(topic)
        
        return @impl.logger(topic)

        nil
    end

    def _getClass()
        
        return "quark.spi.RuntimeApi"

        nil
    end

    def _getField(name)
        
        if ((name) == ("impl"))
            return (self).impl
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("impl"))
            (self).impl = value
        end

        nil
    end

    def __init_fields__()
        
        self.impl = nil

        nil
    end


end
RuntimeApi.unlazy_statics

def self.RuntimeFactory; RuntimeFactory; end
class RuntimeFactory < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static factory: -> { ::Quark.quark.spi.RuntimeFactory.new() }
    static quark_spi_RuntimeFactory_ref: -> { ::Quark.quark_md.Root.quark_spi_RuntimeFactory_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def makeRuntime()
        
        spi = ::DatawireQuarkCore::Runtime.new
        api = ::Quark.quark.spi.RuntimeApi.new(spi)
        return api

        nil
    end

    def _getClass()
        
        return "quark.spi.RuntimeFactory"

        nil
    end

    def _getField(name)
        
        if ((name) == ("factory"))
            return ::Quark.quark.spi.RuntimeFactory.factory
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("factory"))
            ::Quark.quark.spi.RuntimeFactory.factory = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end
RuntimeFactory.unlazy_statics
end # module Spi
end # module Quark
end # module Quark
