module Quark
def self.quark; Quark; end
module Quark
def self.spi_api_tracing; SpiApiTracing; end
module SpiApiTracing
require_relative 'reflect' # 1 () ()
require_relative '../quark_md' # 0 () ('quark',)
require_relative '../quark' # 0 () ('quark',)
require_relative 'concurrent' # 1 () ()


def self.quote(str)
    
    return str


    nil
end

def self.Identificator; Identificator; end
class Identificator < ::DatawireQuarkCore::QuarkObject
    attr_accessor :lock, :seq
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_Identificator_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_Identificator_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def next_(what)
        
        @lock.acquire()
        n = @seq
        @seq = (@seq) + (1)
        @lock.release()
        basename = nil
        if ((what) == (nil))
            basename = "?null?"
        else
            clz = ::Quark.quark.reflect.QuarkClass.get(::DatawireQuarkCore._getClass(what))
            if ((clz) == (nil))
                basename = (("?") + (::Quark.quark.reflect.QuarkClass.get(::DatawireQuarkCore._getClass(self)).getName())) + ("?")
            else
                basename = clz.getName()
            end
        end
        return ((basename) + ("-")) + ((n).to_s)

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.Identificator"

        nil
    end

    def _getField(name)
        
        if ((name) == ("lock"))
            return (self).lock
        end
        if ((name) == ("seq"))
            return (self).seq
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("lock"))
            (self).lock = value
        end
        if ((name) == ("seq"))
            (self).seq = value
        end

        nil
    end

    def __init_fields__()
        
        self.lock = ::DatawireQuarkCore::Lock.new()
        self.seq = 0

        nil
    end


end
Identificator.unlazy_statics

def self.Identifiable; Identifiable; end
class Identifiable < ::DatawireQuarkCore::QuarkObject
    attr_accessor :id, :log
    extend ::DatawireQuarkCore::Static

    static namer: -> { ::Quark.quark.spi_api_tracing.Identificator.new() }
    static quark_spi_api_tracing_Identifiable_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_Identifiable_md }



    def initialize(log, impl)
        
        self.__init_fields__
        (self).id = ::Quark.quark.spi_api_tracing.Identifiable.namer.next_(impl)
        (self).log = log

        nil
    end




    def _getClass()
        
        return "quark.spi_api_tracing.Identifiable"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end

        nil
    end

    def __init_fields__()
        
        self.id = nil
        self.log = nil

        nil
    end


end
Identifiable.unlazy_statics

def self.ServletProxy; ServletProxy; end
class ServletProxy < ::Quark.quark.spi_api_tracing.Identifiable
    attr_accessor :servlet_impl, :real_runtime
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_ServletProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_ServletProxy_md }



    def initialize(log, real_runtime, servlet_impl)
        
        super(log, servlet_impl)
        (self).real_runtime = real_runtime
        (self).servlet_impl = servlet_impl

        nil
    end




    def onServletInit(url, runtime)
        
        (self).log.debug(((((((self).id) + (".onServletInit(")) + (::Quark.quark.spi_api_tracing.quote(url))) + (", ")) + ((@real_runtime).id)) + (")"))
        @servlet_impl.onServletInit(url, @real_runtime)

        nil
    end

    def onServletError(url, error)
        
        (self).log.debug(((((((self).id) + (".onServletError(")) + (::Quark.quark.spi_api_tracing.quote(url))) + (", ")) + (::Quark.quark.spi_api_tracing.quote(error))) + (")"))
        @servlet_impl.onServletError(url, error)

        nil
    end

    def onServletEnd(url)
        
        (self).log.debug(((((self).id) + (".onServletEnd(")) + (::Quark.quark.spi_api_tracing.quote(url))) + (")"))
        @servlet_impl.onServletEnd(url)

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.ServletProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
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
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
        if ((name) == ("servlet_impl"))
            (self).servlet_impl = value
        end
        if ((name) == ("real_runtime"))
            (self).real_runtime = value
        end

        nil
    end

    def __init_fields__()
        
        super
        self.servlet_impl = nil
        self.real_runtime = nil

        nil
    end


end
ServletProxy.unlazy_statics

def self.HTTPRequestProxy; HTTPRequestProxy; end
class HTTPRequestProxy < ::Quark.quark.spi_api_tracing.Identifiable
    attr_accessor :request_impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_HTTPRequestProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_HTTPRequestProxy_md }



    def initialize(log, request_impl)
        
        super(log, request_impl)
        (self).request_impl = request_impl

        nil
    end




    def getUrl()
        
        return @request_impl.getUrl()

        nil
    end

    def setMethod(method)
        
        @request_impl.setMethod(method)

        nil
    end

    def getMethod()
        
        return @request_impl.getMethod()

        nil
    end

    def setBody(data)
        
        @request_impl.setBody(data)

        nil
    end

    def getBody()
        
        return @request_impl.getBody()

        nil
    end

    def setHeader(key, value)
        
        @request_impl.setHeader(key, value)

        nil
    end

    def getHeader(key)
        
        return @request_impl.getHeader(key)

        nil
    end

    def getHeaders()
        
        return @request_impl.getHeaders()

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.HTTPRequestProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
        if ((name) == ("request_impl"))
            return (self).request_impl
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
        if ((name) == ("request_impl"))
            (self).request_impl = value
        end

        nil
    end

    def __init_fields__()
        
        super
        self.request_impl = nil

        nil
    end


end
HTTPRequestProxy.unlazy_statics

def self.HTTPResponseProxy; HTTPResponseProxy; end
class HTTPResponseProxy < ::Quark.quark.spi_api_tracing.Identifiable
    attr_accessor :response_impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_HTTPResponseProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_HTTPResponseProxy_md }



    def initialize(log, response_impl)
        
        super(log, response_impl)
        (self).response_impl = response_impl

        nil
    end




    def getCode()
        
        return @response_impl.getCode()

        nil
    end

    def setCode(code)
        
        @response_impl.setCode(code)

        nil
    end

    def setBody(data)
        
        @response_impl.setBody(data)

        nil
    end

    def getBody()
        
        return @response_impl.getBody()

        nil
    end

    def setHeader(key, value)
        
        @response_impl.setHeader(key, value)

        nil
    end

    def getHeader(key)
        
        return @response_impl.getHeader(key)

        nil
    end

    def getHeaders()
        
        return @response_impl.getHeaders()

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.HTTPResponseProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
        if ((name) == ("response_impl"))
            return (self).response_impl
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
        if ((name) == ("response_impl"))
            (self).response_impl = value
        end

        nil
    end

    def __init_fields__()
        
        super
        self.response_impl = nil

        nil
    end


end
HTTPResponseProxy.unlazy_statics

def self.HTTPServletProxy; HTTPServletProxy; end
class HTTPServletProxy < ::Quark.quark.spi_api_tracing.ServletProxy
    attr_accessor :http_servlet_impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_HTTPServletProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_HTTPServletProxy_md }



    def initialize(log, real_runtime, http_servlet_impl)
        
        super(log, real_runtime, http_servlet_impl)
        (self).http_servlet_impl = http_servlet_impl

        nil
    end




    def onHTTPRequest(request, response)
        
        wrapped_request = ::Quark.quark.spi_api_tracing.HTTPRequestProxy.new((self).log, request)
        wrapped_response = ::Quark.quark.spi_api_tracing.HTTPResponseProxy.new((self).log, response)
        (self).log.debug(((((((((((self).id) + (".onHTTPRequest(")) + ((wrapped_request).id)) + (" ")) + (request.getMethod())) + (" ")) + (::Quark.quark.spi_api_tracing.quote(request.getUrl()))) + (", ")) + ((wrapped_response).id)) + (")"))
        @http_servlet_impl.onHTTPRequest(wrapped_request, wrapped_response)

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.HTTPServletProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
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
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
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
class WSServletProxy < ::Quark.quark.spi_api_tracing.ServletProxy
    attr_accessor :ws_servlet_impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_WSServletProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_WSServletProxy_md }



    def initialize(log, real_runtime, ws_servlet_impl)
        
        super(log, real_runtime, ws_servlet_impl)
        (self).ws_servlet_impl = ws_servlet_impl

        nil
    end




    def onWSConnect(request)
        
        wrapped_request = ::Quark.quark.spi_api_tracing.HTTPRequestProxy.new((self).log, request)
        (self).log.debug(((((((((self).id) + (".onWSConnect(")) + ((wrapped_request).id)) + (" ")) + (request.getMethod())) + (" ")) + (::Quark.quark.spi_api_tracing.quote(request.getUrl()))) + (")..."))
        handler = @ws_servlet_impl.onWSConnect(wrapped_request)
        if ((handler) == (nil))
            (self).log.debug(((((((self).id) + (".onWSConnect(")) + ((wrapped_request).id)) + (")")) + (" -> ")) + ("null"))
            return handler
        else
            wrapped_handler = ::Quark.quark.spi_api_tracing.WSHandlerProxy.new((self).log, handler)
            (self).log.debug(((((((self).id) + (".onWSConnect(")) + ((wrapped_request).id)) + (")")) + (" -> ")) + ((wrapped_handler).id))
            return wrapped_handler
        end

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.WSServletProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
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
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
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
class TaskProxy < ::Quark.quark.spi_api_tracing.Identifiable
    attr_accessor :task_impl, :real_runtime
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_TaskProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_TaskProxy_md }



    def initialize(log, real_runtime, task_impl)
        
        super(log, task_impl)
        (self).task_impl = task_impl
        (self).real_runtime = real_runtime

        nil
    end




    def onExecute(runtime)
        
        (self).log.debug(((((self).id) + (".onExecute(")) + ((@real_runtime).id)) + (")"))
        @task_impl.onExecute(@real_runtime)

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.TaskProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
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
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
        if ((name) == ("task_impl"))
            (self).task_impl = value
        end
        if ((name) == ("real_runtime"))
            (self).real_runtime = value
        end

        nil
    end

    def __init_fields__()
        
        super
        self.task_impl = nil
        self.real_runtime = nil

        nil
    end


end
TaskProxy.unlazy_statics

def self.WebSocketProxy; WebSocketProxy; end
class WebSocketProxy < ::Quark.quark.spi_api_tracing.Identifiable
    attr_accessor :socket_impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_WebSocketProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_WebSocketProxy_md }



    def initialize(log, socket_impl)
        
        super(log, socket_impl)
        (self).socket_impl = socket_impl

        nil
    end




    def send(message)
        
        (self).log.debug(((((self).id) + (".send(")) + (::Quark.quark.spi_api_tracing.quote(message))) + (")..."))
        ret = @socket_impl.send(message)
        (self).log.debug((((((self).id) + (".send(")) + (")")) + (" -> ")) + ((ret).to_s))
        return ret

        nil
    end

    def sendBinary(message)
        
        (self).log.debug(((((self).id) + (".sendBinary(")) + (::Quark.quark.concurrent.Context.runtime().codec().toHexdump(message, 0, message.capacity(), 4))) + (")..."))
        ret = @socket_impl.sendBinary(message)
        (self).log.debug((((((self).id) + (".sendBinary(")) + (")")) + (" -> ")) + ((ret).to_s))
        return ret

        nil
    end

    def close()
        
        (self).log.debug((((self).id) + (".close(")) + (")..."))
        ret = @socket_impl.close()
        (self).log.debug((((((self).id) + (".close(")) + (")")) + (" -> ")) + ((ret).to_s))
        return ret

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.WebSocketProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
        if ((name) == ("socket_impl"))
            return (self).socket_impl
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
        if ((name) == ("socket_impl"))
            (self).socket_impl = value
        end

        nil
    end

    def __init_fields__()
        
        super
        self.socket_impl = nil

        nil
    end


end
WebSocketProxy.unlazy_statics

def self.WSHandlerProxy; WSHandlerProxy; end
class WSHandlerProxy < ::Quark.quark.spi_api_tracing.Identifiable
    attr_accessor :handler_impl, :wrapped_socket
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_WSHandlerProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_WSHandlerProxy_md }



    def initialize(log, handler_impl)
        
        super(log, handler_impl)
        (self).handler_impl = handler_impl

        nil
    end




    def onWSInit(socket)
        
        @wrapped_socket = ::Quark.quark.spi_api_tracing.WebSocketProxy.new((self).log, socket)
        (self).log.debug(((((self).id) + (".onWSInit(")) + ((@wrapped_socket).id)) + (")"))
        @handler_impl.onWSInit(@wrapped_socket)

        nil
    end

    def onWSConnected(socket)
        
        (self).log.debug(((((self).id) + (".onWSConnected(")) + ((@wrapped_socket).id)) + (")"))
        @handler_impl.onWSConnected(@wrapped_socket)

        nil
    end

    def onWSMessage(socket, message)
        
        (self).log.debug(((((((self).id) + (".onWSMessage(")) + ((@wrapped_socket).id)) + (", ")) + (::Quark.quark.spi_api_tracing.quote(message))) + (")"))
        @handler_impl.onWSMessage(@wrapped_socket, message)

        nil
    end

    def onWSBinary(socket, message)
        
        (self).log.debug(((((((self).id) + (".onWSBinary(")) + ((@wrapped_socket).id)) + (", ")) + (::Quark.quark.concurrent.Context.runtime().codec().toHexdump(message, 0, message.capacity(), 4))) + (")"))
        @handler_impl.onWSBinary(@wrapped_socket, message)

        nil
    end

    def onWSClosed(socket)
        
        (self).log.debug(((((self).id) + (".onWSClosed(")) + ((@wrapped_socket).id)) + (")"))
        @handler_impl.onWSClosed(@wrapped_socket)

        nil
    end

    def onWSError(socket)
        
        (self).log.debug(((((self).id) + (".onWSError(")) + ((@wrapped_socket).id)) + (")"))
        @handler_impl.onWSError(@wrapped_socket)

        nil
    end

    def onWSFinal(socket)
        
        (self).log.debug(((((self).id) + (".onWSFinal(")) + ((@wrapped_socket).id)) + (")"))
        @handler_impl.onWSFinal(@wrapped_socket)

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.WSHandlerProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
        if ((name) == ("handler_impl"))
            return (self).handler_impl
        end
        if ((name) == ("wrapped_socket"))
            return (self).wrapped_socket
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
        if ((name) == ("handler_impl"))
            (self).handler_impl = value
        end
        if ((name) == ("wrapped_socket"))
            (self).wrapped_socket = value
        end

        nil
    end

    def __init_fields__()
        
        super
        self.handler_impl = nil
        self.wrapped_socket = nil

        nil
    end


end
WSHandlerProxy.unlazy_statics

def self.HTTPHandlerProxy; HTTPHandlerProxy; end
class HTTPHandlerProxy < ::Quark.quark.spi_api_tracing.Identifiable
    attr_accessor :handler_impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_HTTPHandlerProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_HTTPHandlerProxy_md }



    def initialize(log, handler_impl)
        
        super(log, handler_impl)
        (self).handler_impl = handler_impl

        nil
    end




    def onHTTPInit(request)
        
        wrapped_request = request
        (self).log.debug(((((self).id) + (".onHTTPInit(")) + ((wrapped_request).id)) + (")"))
        (self).handler_impl.onHTTPInit(request)

        nil
    end

    def onHTTPResponse(request, response)
        
        wrapped_request = request
        (self).log.debug(((((((((self).id) + (".onHTTPResponse(")) + ((wrapped_request).id)) + (", ")) + ((response.getCode()).to_s)) + (" ")) + (::Quark.quark.spi_api_tracing.quote(response.getBody()))) + (")"))
        (self).handler_impl.onHTTPResponse(request, response)

        nil
    end

    def onHTTPError(request, message)
        
        wrapped_request = request
        (self).log.debug(((((((self).id) + (".onHTTPError(")) + ((wrapped_request).id)) + (", ")) + (::Quark.quark.spi_api_tracing.quote(message))) + (")"))
        (self).handler_impl.onHTTPError(request, message)

        nil
    end

    def onHTTPFinal(request)
        
        wrapped_request = request
        (self).log.debug(((((self).id) + (".onHTTPFinal(")) + ((wrapped_request).id)) + (")"))
        (self).handler_impl.onHTTPFinal(request)

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.HTTPHandlerProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
        if ((name) == ("handler_impl"))
            return (self).handler_impl
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
        if ((name) == ("handler_impl"))
            (self).handler_impl = value
        end

        nil
    end

    def __init_fields__()
        
        super
        self.handler_impl = nil

        nil
    end


end
HTTPHandlerProxy.unlazy_statics

def self.RuntimeProxy; RuntimeProxy; end
class RuntimeProxy < ::Quark.quark.spi_api_tracing.Identifiable
    attr_accessor :impl
    extend ::DatawireQuarkCore::Static

    static quark_spi_api_tracing_RuntimeProxy_ref: -> { ::Quark.quark_md.Root.quark_spi_api_tracing_RuntimeProxy_md }



    def initialize(impl)
        
        super(impl.logger("api"), impl)
        (self).log.debug(("new ") + ((self).id))
        (self).impl = impl

        nil
    end




    def open(url, handler)
        
        wrapped_handler = ::Quark.quark.spi_api_tracing.WSHandlerProxy.new((self).log, handler)
        (self).log.debug(((((((self).id) + (".open(")) + (::Quark.quark.spi_api_tracing.quote(url))) + (", ")) + ((wrapped_handler).id)) + (")"))
        @impl.open(url, wrapped_handler)

        nil
    end

    def request(request, handler)
        
        wrapped_handler = ::Quark.quark.spi_api_tracing.HTTPHandlerProxy.new((self).log, handler)
        wrapped_request = ::Quark.quark.spi_api_tracing.HTTPRequestProxy.new((self).log, request)
        (self).log.debug(((((((((((self).id) + (".request(")) + ((wrapped_request).id)) + (" ")) + (request.getMethod())) + (" ")) + (::Quark.quark.spi_api_tracing.quote(request.getUrl()))) + (", ")) + ((wrapped_handler).id)) + (")"))
        @impl.request(wrapped_request, wrapped_handler)

        nil
    end

    def schedule(handler, delayInSeconds)
        
        wrapped_handler = ::Quark.quark.spi_api_tracing.TaskProxy.new((self).log, self, handler)
        (self).log.debug(((((((self).id) + (".schedule(")) + ((wrapped_handler).id)) + (", ")) + ((delayInSeconds).to_s)) + (")"))
        @impl.schedule(wrapped_handler, delayInSeconds)

        nil
    end

    def codec()
        
        (self).log.debug(((self).id) + (".codec()"))
        return @impl.codec()

        nil
    end

    def serveHTTP(url, servlet)
        
        wrapped_servlet = ::Quark.quark.spi_api_tracing.HTTPServletProxy.new((self).log, self, servlet)
        (self).log.debug(((((((self).id) + (".serveHTTP(")) + (::Quark.quark.spi_api_tracing.quote(url))) + (", ")) + ((wrapped_servlet).id)) + (")"))
        @impl.serveHTTP(url, wrapped_servlet)

        nil
    end

    def serveWS(url, servlet)
        
        wrapped_servlet = ::Quark.quark.spi_api_tracing.WSServletProxy.new((self).log, self, servlet)
        (self).log.debug(((((((self).id) + (".serveWS(")) + (::Quark.quark.spi_api_tracing.quote(url))) + (", ")) + ((wrapped_servlet).id)) + (")"))
        @impl.serveWS(url, wrapped_servlet)

        nil
    end

    def respond(request, response)
        
        wrapped_request = request
        wrapped_response = response
        (self).log.debug(((((((((((self).id) + (".respond(")) + ((wrapped_request).id)) + (", ")) + ((wrapped_response).id)) + (" ")) + ((wrapped_response.getCode()).to_s)) + (" ")) + (wrapped_response.getBody())) + (")"))
        @impl.respond((wrapped_request).request_impl, (wrapped_response).response_impl)

        nil
    end

    def fail(message)
        
        (self).log.info(((((self).id) + (".fail(")) + (::Quark.quark.spi_api_tracing.quote(message))) + (")"))
        @impl.fail(message)

        nil
    end

    def logger(topic)
        
        (self).log.info(((((self).id) + (".logger(")) + (::Quark.quark.spi_api_tracing.quote(topic))) + (")"))
        return @impl.logger(topic)

        nil
    end

    def _getClass()
        
        return "quark.spi_api_tracing.RuntimeProxy"

        nil
    end

    def _getField(name)
        
        if ((name) == ("namer"))
            return ::Quark.quark.spi_api_tracing.Identifiable.namer
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("log"))
            return (self).log
        end
        if ((name) == ("impl"))
            return (self).impl
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("namer"))
            ::Quark.quark.spi_api_tracing.Identifiable.namer = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("log"))
            (self).log = value
        end
        if ((name) == ("impl"))
            (self).impl = value
        end

        nil
    end

    def __init_fields__()
        
        super
        self.impl = nil

        nil
    end


end
RuntimeProxy.unlazy_statics
end # module SpiApiTracing
end # module Quark
end # module Quark
