module Quark
require_relative "datawire-quark-core"
def self.quark; Quark; end
module Quark
require_relative 'quark/reflect' # 0 ('quark',) ()
require_relative 'quark_md' # 0 () ()
require_relative 'quark/logging' # 0 ('quark',) ()
require_relative 'quark/behaviors' # 0 ('quark',) ()
require_relative 'quark/concurrent' # 0 ('quark',) ()
require_relative 'quark/test' # 0 ('quark',) ()
require_relative 'quark/spi' # 0 ('quark',) ()


def self.Task; Task; end
class Task < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_Task_ref: -> { ::Quark.quark_md.Root.quark_Task_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def onExecute(runtime)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Task.unlazy_statics

def self.Runtime; Runtime; end
class Runtime < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_Runtime_ref: -> { ::Quark.quark_md.Root.quark_Runtime_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def open(url, handler)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def request(request, handler)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def schedule(handler, delayInSeconds)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def codec()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def serveHTTP(url, servlet)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def serveWS(url, servlet)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def respond(request, response)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def fail(message)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def logger(topic)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Runtime.unlazy_statics


def self.ListUtil; ListUtil; end
class ListUtil < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_List_quark_Object__ref: -> { ::Quark.quark_md.Root.quark_List_quark_Object__md }



    def initialize()
        self.__init_fields__

        nil
    end




    def slice(list, start, stop)
        
        result = ::DatawireQuarkCore::List.new([])
        if ((start) >= ((list).size))
            start = (list).size
        else
            start = (start) % ((list).size)
        end
        if ((stop) >= ((list).size))
            stop = (list).size
        else
            stop = (stop) % ((list).size)
        end
        idx = start
        while ((idx) < (stop)) do
            (result) << ((list)[idx])
            idx = (idx) + (1)
        end
        return result

        nil
    end

    def _getClass()
        
        return "quark.ListUtil<quark.Object>"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
ListUtil.unlazy_statics




def self.toJSON(obj, cls)
    
    result = ::DatawireQuarkCore::JSONObject.new
    if ((obj) == (nil))
        result.setNull()
        return result
    end
    if ((cls) == (nil))
        cls = ::Quark.quark.reflect.QuarkClass.get(::DatawireQuarkCore._getClass(obj))
    end
    idx = 0
    if (((cls).name) == ("quark.String"))
        result.setString(obj)
        return result
    end
    if (((((((cls).name) == ("quark.byte")) || (((cls).name) == ("quark.short"))) || (((cls).name) == ("quark.int"))) || (((cls).name) == ("quark.long"))) || (((cls).name) == ("quark.float")))
        result.setNumber(obj)
        return result
    end
    if (((cls).name) == ("quark.List"))
        result.setList()
        list = obj
        while ((idx) < ((list).size)) do
            result.setListItem(idx, ::Quark.quark.toJSON((list)[idx], nil))
            idx = (idx) + (1)
        end
        return result
    end
    if (((cls).name) == ("quark.Map"))
        result.setObject()
        map = obj
        return result
    end
    (result).setObjectItem(("$class"), (::DatawireQuarkCore::JSONObject.new.setString((cls).id)))
    fields = cls.getFields()
    while ((idx) < ((fields).size)) do
        fieldName = ((fields)[idx]).name
        if (!((fieldName).start_with?("_")))
            (result).setObjectItem((fieldName), (::Quark.quark.toJSON((obj)._getField(fieldName), (fields)[idx].getType())))
        end
        idx = (idx) + (1)
    end
    return result


    nil
end

def self.fromJSON(cls, result, json)
    
    if (((json) == (nil)) || (json.isNull()))
        return nil
    end
    idx = 0
    if ((result) == (nil))
        if (((cls).name) == ("quark.String"))
            s = json.getString()
            return s
        end
        if (((cls).name) == ("quark.float"))
            flt = json.getNumber()
            return flt
        end
        if (((cls).name) == ("quark.int"))
            i = (json).getNumber.round
            return i
        end
        if (((cls).name) == ("quark.bool"))
            b = json.getBool()
            return b
        end
        result = cls.construct(::DatawireQuarkCore::List.new([]))
    end
    if (((cls).name) == ("quark.List"))
        list = result
        while ((idx) < (json.size())) do
            (list) << (::Quark.quark.fromJSON((cls.getParameters())[0], nil, json.getListItem(idx)))
            idx = (idx) + (1)
        end
        return list
    end
    fields = cls.getFields()
    while ((idx) < ((fields).size)) do
        f = (fields)[idx]
        idx = (idx) + (1)
        if (((f).name).start_with?("_"))
            next
        end
        if (!((json).getObjectItem((f).name).isNull()))
            (result)._setField(((f).name), (::Quark.quark.fromJSON(f.getType(), nil, (json).getObjectItem((f).name))))
        end
    end
    return result


    nil
end


def self.Servlet; Servlet; end
class Servlet < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_Servlet_ref: -> { ::Quark.quark_md.Root.quark_Servlet_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def onServletInit(url, runtime)
        
        nil

        nil
    end

    def onServletError(url, error)
        
        nil

        nil
    end

    def onServletEnd(url)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Servlet.unlazy_statics

def self.Resolver; Resolver; end
class Resolver < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_Resolver_ref: -> { ::Quark.quark_md.Root.quark_Resolver_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def resolve(serviceName)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Resolver.unlazy_statics

def self.ResponseHolder; ResponseHolder; end
class ResponseHolder < ::DatawireQuarkCore::QuarkObject
    attr_accessor :response, :failure
    extend ::DatawireQuarkCore::Static

    static quark_ResponseHolder_ref: -> { ::Quark.quark_md.Root.quark_ResponseHolder_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def onHTTPResponse(request, response)
        
        (self).response = response

        nil
    end

    def onHTTPError(request, message)
        
        @failure = message

        nil
    end

    def _getClass()
        
        return "quark.ResponseHolder"

        nil
    end

    def _getField(name)
        
        if ((name) == ("response"))
            return (self).response
        end
        if ((name) == ("failure"))
            return (self).failure
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("response"))
            (self).response = value
        end
        if ((name) == ("failure"))
            (self).failure = value
        end

        nil
    end

    def onHTTPInit(request)
        
        nil

        nil
    end

    def onHTTPFinal(request)
        
        nil

        nil
    end

    def __init_fields__()
        
        self.response = nil
        self.failure = nil

        nil
    end


end
ResponseHolder.unlazy_statics

def self.Service; Service; end
class Service < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_Service_ref: -> { ::Quark.quark_md.Root.quark_Service_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def getName()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getInstance()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getTimeout()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def rpc(methodName, args)
        
        rpc = ::Quark.quark.behaviors.RPC.new(self, methodName)
        return rpc.call(args)

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Service.unlazy_statics

def self.BaseService; BaseService; end
class BaseService < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_BaseService_ref: -> { ::Quark.quark_md.Root.quark_BaseService_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def getName()
        
        return nil

        nil
    end

    def getInstance()
        
        return nil

        nil
    end

    def getTimeout()
        
        return -(1.0)

        nil
    end

    def _getClass()
        
        return "quark.BaseService"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def rpc(methodName, args)
        
        rpc = ::Quark.quark.behaviors.RPC.new(self, methodName)
        return rpc.call(args)

        nil
    end

    def __init_fields__()
        

        nil
    end


end
BaseService.unlazy_statics

def self.ServiceInstance; ServiceInstance; end
class ServiceInstance < ::DatawireQuarkCore::QuarkObject
    attr_accessor :serviceName, :url, :breaker
    extend ::DatawireQuarkCore::Static

    static quark_ServiceInstance_ref: -> { ::Quark.quark_md.Root.quark_ServiceInstance_md }



    def initialize(serviceName, url, failureLimit, retestDelay)
        
        self.__init_fields__
        (self).serviceName = serviceName
        (self).url = url
        (self).breaker = ::Quark.quark.behaviors.CircuitBreaker.new((((("[") + (serviceName)) + (" at ")) + (url)) + ("]"), failureLimit, retestDelay)

        nil
    end




    def isActive()
        
        return ((self).breaker).active

        nil
    end

    def getURL()
        
        return (self).url

        nil
    end

    def succeed(info)
        
        if (!(self.isActive()))
            ::Quark.quark.Client.logger.info(((("- CLOSE breaker for ") + ((self).serviceName)) + (" at ")) + ((self).url))
        end
        (self).breaker.succeed()

        nil
    end

    def fail(info)
        
        if (!(self.isActive()))
            ::Quark.quark.Client.logger.warn(((("- OPEN breaker for ") + ((self).serviceName)) + (" at ")) + ((self).url))
        end
        (self).breaker.fail()

        nil
    end

    def _getClass()
        
        return "quark.ServiceInstance"

        nil
    end

    def _getField(name)
        
        if ((name) == ("serviceName"))
            return (self).serviceName
        end
        if ((name) == ("url"))
            return (self).url
        end
        if ((name) == ("breaker"))
            return (self).breaker
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("serviceName"))
            (self).serviceName = value
        end
        if ((name) == ("url"))
            (self).url = value
        end
        if ((name) == ("breaker"))
            (self).breaker = value
        end

        nil
    end

    def __init_fields__()
        
        self.serviceName = nil
        self.url = nil
        self.breaker = nil

        nil
    end


end
ServiceInstance.unlazy_statics

def self.DegenerateResolver; DegenerateResolver; end
class DegenerateResolver < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_DegenerateResolver_ref: -> { ::Quark.quark_md.Root.quark_DegenerateResolver_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def resolve(serviceName)
        
        return ::DatawireQuarkCore::List.new([serviceName])

        nil
    end

    def _getClass()
        
        return "quark.DegenerateResolver"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
DegenerateResolver.unlazy_statics

def self.Client; Client; end
class Client < ::DatawireQuarkCore::QuarkObject
    attr_accessor :resolver, :serviceName, :_timeout, :_failureLimit, :_retestDelay, :mutex, :instanceMap, :counter
    extend ::DatawireQuarkCore::Static

    static logger: -> { ::Quark.quark.concurrent.Context.runtime().logger("quark.client") }
    static quark_Map_quark_String_quark_ServiceInstance__ref: -> { ::Quark.quark_md.Root.quark_Map_quark_String_quark_ServiceInstance__md }
    static quark_Client_ref: -> { ::Quark.quark_md.Root.quark_Client_md }



    def initialize(serviceName)
        
        self.__init_fields__
        (self).serviceName = serviceName
        (self).resolver = ::Quark.quark.DegenerateResolver.new()
        (self)._timeout = 0.0
        (self).mutex = ::DatawireQuarkCore::Lock.new()
        (self).instanceMap = {}
        (self).counter = 0
        failureLimit = (self)._getField("failureLimit")
        if ((failureLimit) != (nil))
            (self)._failureLimit = failureLimit
        end
        ::Quark.quark.Client.logger.info((((self).to_s) + (" failureLimit ")) + (((self)._failureLimit).to_s))
        retestDelay = (self)._getField("retestDelay")
        if ((retestDelay) != (nil))
            (self)._retestDelay = retestDelay
        end
        ::Quark.quark.Client.logger.info((((self).to_s) + (" retestDelay ")) + (((self)._retestDelay).to_s))

        nil
    end




    def setResolver(resolver)
        
        (self).resolver = resolver

        nil
    end

    def getInstance()
        
        urls = (self).resolver.resolve((self).serviceName)
        if (((urls).size) <= (0))
            return nil
        end
        (urls).sort!
        (self).mutex.acquire()
        result = nil
        next_ = ((self).counter) % ((urls).size)
        (self).counter = ((self).counter) + (1)
        idx = next_
        while (true) do
            url = (urls)[idx]
            instance = ((self).instanceMap)[url]
            if ((instance) == (nil))
                instance = ::Quark.quark.ServiceInstance.new((self).serviceName, url, @_failureLimit, @_retestDelay)
                ((self).instanceMap)[url] = (instance)
            end
            if (instance.isActive())
                ::Quark.quark.Client.logger.info(((((("- ") + ((self).serviceName)) + (" using instance ")) + (((idx) + (1)).to_s)) + (": ")) + (url))
                result = instance
                break
            end
            idx = ((idx) + (1)) % ((urls).size)
            if ((idx) == (next_))
                ::Quark.quark.Client.logger.info((("- ") + ((self).serviceName)) + (": no live instances! giving up."))
                break
            end
        end
        (self).mutex.release()
        return result

        nil
    end

    def getName()
        
        return (self).serviceName

        nil
    end

    def getTimeout()
        
        return (self)._timeout

        nil
    end

    def setTimeout(timeout)
        
        (self)._timeout = timeout

        nil
    end

    def _getClass()
        
        return "quark.Client"

        nil
    end

    def _getField(name)
        
        if ((name) == ("logger"))
            return ::Quark.quark.Client.logger
        end
        if ((name) == ("resolver"))
            return (self).resolver
        end
        if ((name) == ("serviceName"))
            return (self).serviceName
        end
        if ((name) == ("_timeout"))
            return (self)._timeout
        end
        if ((name) == ("_failureLimit"))
            return (self)._failureLimit
        end
        if ((name) == ("_retestDelay"))
            return (self)._retestDelay
        end
        if ((name) == ("mutex"))
            return (self).mutex
        end
        if ((name) == ("instanceMap"))
            return (self).instanceMap
        end
        if ((name) == ("counter"))
            return (self).counter
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("logger"))
            ::Quark.quark.Client.logger = value
        end
        if ((name) == ("resolver"))
            (self).resolver = value
        end
        if ((name) == ("serviceName"))
            (self).serviceName = value
        end
        if ((name) == ("_timeout"))
            (self)._timeout = value
        end
        if ((name) == ("_failureLimit"))
            (self)._failureLimit = value
        end
        if ((name) == ("_retestDelay"))
            (self)._retestDelay = value
        end
        if ((name) == ("mutex"))
            (self).mutex = value
        end
        if ((name) == ("instanceMap"))
            (self).instanceMap = value
        end
        if ((name) == ("counter"))
            (self).counter = value
        end

        nil
    end

    def __init_fields__()
        
        self.resolver = nil
        self.serviceName = nil
        self._timeout = nil
        self._failureLimit = 3
        self._retestDelay = 30.0
        self.mutex = nil
        self.instanceMap = nil
        self.counter = nil

        nil
    end


end
Client.unlazy_statics

def self.ServerResponder; ServerResponder; end
class ServerResponder < ::DatawireQuarkCore::QuarkObject
    attr_accessor :sendCORS, :request, :response
    extend ::DatawireQuarkCore::Static

    static quark_ServerResponder_ref: -> { ::Quark.quark_md.Root.quark_ServerResponder_md }



    def initialize(sendCORS, request, response)
        
        self.__init_fields__
        (self).sendCORS = sendCORS
        (self).request = request
        (self).response = response

        nil
    end




    def onFuture(result)
        
        error = result.getError()
        if ((error) != (nil))
            @response.setCode(404)
        else
            if ((self).sendCORS)
                (self).response.setHeader("Access-Control-Allow-Origin", "*")
            end
            (self).response.setBody(::Quark.quark.toJSON(result, nil).toString())
            (self).response.setCode(200)
        end
        ::Quark.quark.concurrent.Context.runtime().respond(@request, @response)

        nil
    end

    def _getClass()
        
        return "quark.ServerResponder"

        nil
    end

    def _getField(name)
        
        if ((name) == ("sendCORS"))
            return (self).sendCORS
        end
        if ((name) == ("request"))
            return (self).request
        end
        if ((name) == ("response"))
            return (self).response
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("sendCORS"))
            (self).sendCORS = value
        end
        if ((name) == ("request"))
            (self).request = value
        end
        if ((name) == ("response"))
            (self).response = value
        end

        nil
    end

    def __init_fields__()
        
        self.sendCORS = nil
        self.request = nil
        self.response = nil

        nil
    end


end
ServerResponder.unlazy_statics

def self.Server; Server; end
class Server < ::DatawireQuarkCore::QuarkObject
    attr_accessor :impl, :_sendCORS
    extend ::DatawireQuarkCore::Static

    static quark_Server_quark_Object__ref: -> { ::Quark.quark_md.Root.quark_Server_quark_Object__md }



    def initialize(impl)
        
        self.__init_fields__
        (self).impl = impl
        (self)._sendCORS = false

        nil
    end




    def sendCORS(send)
        
        (self)._sendCORS = send

        nil
    end

    def onHTTPRequest(request, response)
        
        body = request.getBody()
        envelope = ::DatawireQuarkCore::JSONObject.parse(body)
        if ((((envelope).getObjectItem("$method")) == (envelope.undefined())) || (((envelope).getObjectItem("rpc")) == (envelope.undefined())))
            response.setBody((("Failed to understand request.\n\n") + (body)) + ("\n"))
            response.setCode(400)
            ::Quark.quark.concurrent.Context.runtime().respond(request, response)
        else
            methodName = (envelope).getObjectItem("$method").getString()
            json = (envelope).getObjectItem("rpc")
            method = ::Quark.quark.reflect.QuarkClass.get(::DatawireQuarkCore._getClass(self)).getField("impl").getType().getMethod(methodName)
            params = method.getParameters()
            args = ::DatawireQuarkCore::List.new([])
            idx = 0
            while ((idx) < ((params).size)) do
                (args) << (::Quark.quark.fromJSON((params)[idx], nil, json.getListItem(idx)))
                idx = (idx) + (1)
            end
            result = method.invoke(@impl, args)
            result.onFinished(::Quark.quark.ServerResponder.new((self)._sendCORS, request, response))
        end

        nil
    end

    def onServletError(url, message)
        
        ::Quark.quark.concurrent.Context.runtime().fail(((("RPC Server failed to register ") + (url)) + (" due to: ")) + (message))

        nil
    end

    def _getClass()
        
        return "quark.Server<quark.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("impl"))
            return (self).impl
        end
        if ((name) == ("_sendCORS"))
            return (self)._sendCORS
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("impl"))
            (self).impl = value
        end
        if ((name) == ("_sendCORS"))
            (self)._sendCORS = value
        end

        nil
    end

    def serveHTTP(url)
        
        ::Quark.quark.concurrent.Context.runtime().serveHTTP(url, self)

        nil
    end

    def onServletInit(url, runtime)
        
        nil

        nil
    end

    def onServletEnd(url)
        
        nil

        nil
    end

    def __init_fields__()
        
        self.impl = nil
        self._sendCORS = nil

        nil
    end


end
Server.unlazy_statics



def self.HTTPHandler; HTTPHandler; end
class HTTPHandler < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_HTTPHandler_ref: -> { ::Quark.quark_md.Root.quark_HTTPHandler_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def onHTTPInit(request)
        
        nil

        nil
    end

    def onHTTPResponse(request, response)
        
        nil

        nil
    end

    def onHTTPError(request, message)
        
        nil

        nil
    end

    def onHTTPFinal(request)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
HTTPHandler.unlazy_statics

def self.HTTPRequest; HTTPRequest; end
class HTTPRequest < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_HTTPRequest_ref: -> { ::Quark.quark_md.Root.quark_HTTPRequest_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def getUrl()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def setMethod(method)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getMethod()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def setBody(data)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getBody()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def setHeader(key, value)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getHeader(key)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getHeaders()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
HTTPRequest.unlazy_statics

def self.HTTPResponse; HTTPResponse; end
class HTTPResponse < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_HTTPResponse_ref: -> { ::Quark.quark_md.Root.quark_HTTPResponse_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def getCode()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def setCode(code)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getBody()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def setBody(body)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def setHeader(key, value)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getHeader(key)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def getHeaders()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
HTTPResponse.unlazy_statics

def self.HTTPServlet; HTTPServlet; end
class HTTPServlet < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_HTTPServlet_ref: -> { ::Quark.quark_md.Root.quark_HTTPServlet_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def onHTTPRequest(request, response)
        
        nil

        nil
    end

    def serveHTTP(url)
        
        ::Quark.quark.concurrent.Context.runtime().serveHTTP(url, self)

        nil
    end

    def __init_fields__()
        

        nil
    end


end
HTTPServlet.unlazy_statics


def self.WSHandler; WSHandler; end
class WSHandler < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_WSHandler_ref: -> { ::Quark.quark_md.Root.quark_WSHandler_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def onWSInit(socket)
        
        nil

        nil
    end

    def onWSConnected(socket)
        
        nil

        nil
    end

    def onWSMessage(socket, message)
        
        nil

        nil
    end

    def onWSBinary(socket, message)
        
        nil

        nil
    end

    def onWSClosed(socket)
        
        nil

        nil
    end

    def onWSError(socket)
        
        nil

        nil
    end

    def onWSFinal(socket)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
WSHandler.unlazy_statics

def self.WebSocket; WebSocket; end
class WebSocket < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_WebSocket_ref: -> { ::Quark.quark_md.Root.quark_WebSocket_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def send(message)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def sendBinary(bytes)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def close()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
WebSocket.unlazy_statics

def self.WSServlet; WSServlet; end
class WSServlet < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_WSServlet_ref: -> { ::Quark.quark_md.Root.quark_WSServlet_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def onWSConnect(upgrade_request)
        
        return nil

        nil
    end

    def serveWS(url)
        
        ::Quark.quark.concurrent.Context.runtime().serveWS(url, self)

        nil
    end

    def __init_fields__()
        

        nil
    end


end
WSServlet.unlazy_statics



def self.URL; URL; end
class URL < ::DatawireQuarkCore::QuarkObject
    attr_accessor :scheme, :host, :port, :path
    extend ::DatawireQuarkCore::Static

    static quark_URL_ref: -> { ::Quark.quark_md.Root.quark_URL_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def self.parse(url)
        
        result = ::Quark.quark.URL.new()
        if ((url) == (nil))
            return nil
        end
        parts = nil
        remaining = nil
        idx = ((url).index("://") or -1)
        if ((idx) >= (0))
            (result).scheme = (url)[(0)...(idx)]
            remaining = (url)[((idx) + (3))...((url).size)]
        else
            remaining = url
        end
        firstSlash = ((remaining).index("/") or -1)
        if ((firstSlash) == (0))
            (result).path = remaining
            return result
        end
        if ((firstSlash) < (0))
            firstSlash = (remaining).size
        else
            (result).path = (remaining)[(firstSlash)...((remaining).size)]
        end
        idx = ((remaining).index(":") or -1)
        if ((idx) > (firstSlash))
            (result).host = (remaining)[(0)...(firstSlash)]
        else
            if ((idx) >= (0))
                (result).host = (remaining)[(0)...(idx)]
                (result).port = (remaining)[((idx) + (1))...(firstSlash)]
            else
                (result).host = (remaining)[(0)...(firstSlash)]
            end
        end
        return result

        nil
    end

    def toString()
        
        result = ""
        if ((@scheme) != (nil))
            result = (@scheme) + ("://")
        end
        if ((@host) != (nil))
            result = (result) + (@host)
        end
        if ((@port) != (nil))
            result = ((result) + (":")) + (@port)
        end
        if ((@path) != (nil))
            result = (result) + (@path)
        end
        return result

        nil
    end

    def _getClass()
        
        return "quark.URL"

        nil
    end

    def _getField(name)
        
        if ((name) == ("scheme"))
            return (self).scheme
        end
        if ((name) == ("host"))
            return (self).host
        end
        if ((name) == ("port"))
            return (self).port
        end
        if ((name) == ("path"))
            return (self).path
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("scheme"))
            (self).scheme = value
        end
        if ((name) == ("host"))
            (self).host = value
        end
        if ((name) == ("port"))
            (self).port = value
        end
        if ((name) == ("path"))
            (self).path = value
        end

        nil
    end

    def __init_fields__()
        
        self.scheme = nil
        self.host = nil
        self.port = nil
        self.path = nil

        nil
    end


end
URL.unlazy_statics

end # module Quark
end # module Quark
