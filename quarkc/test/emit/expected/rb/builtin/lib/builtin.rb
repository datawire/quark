module Quark
require "datawire-quark-core"
def self.builtin; MODULE_builtin; end
module MODULE_builtin
require 'builtin/reflect'
require 'builtin/concurrent'
require 'builtin/behaviors'
require 'builtin_md'

def self.toJSON(obj, cls)
    
    result = DatawireQuarkCore::JSONObject.new
    if ((obj) == (nil))
        result.setNull()
        return result
    end
    if ((cls) == (nil))
        cls = builtin::reflect::QuarkClass.get(DatawireQuarkCore._getClass(obj))
    end
    idx = 0
    if (((cls).name) == ("builtin.String"))
        result.setString(obj)
        return result
    end
    if (((((((cls).name) == ("builtin.byte")) || (((cls).name) == ("builtin.short"))) || (((cls).name) == ("builtin.int"))) || (((cls).name) == ("builtin.long"))) || (((cls).name) == ("builtin.float")))
        result.setNumber(obj)
        return result
    end
    if (((cls).name) == ("builtin.List"))
        result.setList()
        list = obj
        while ((idx) < ((list).size)) do
            result.setListItem(idx, ::Quark.builtin.toJSON((list)[idx], nil))
            idx = (idx) + (1)
        end
        return result
    end
    if (((cls).name) == ("builtin.Map"))
        result.setObject()
        map = obj
        return result
    end
    (result).setObjectItem(("$class"), (DatawireQuarkCore::JSONObject.new.setString((cls).id)))
    fields = cls.getFields()
    while ((idx) < ((fields).size)) do
        fieldName = ((fields)[idx]).name
        if (!((fieldName).start_with?("_")))
            (result).setObjectItem((fieldName), (::Quark.builtin.toJSON((obj)._getField(fieldName), (fields)[idx].getType())))
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
        if (((cls).name) == ("builtin.String"))
            s = json.getString()
            return s
        end
        if (((cls).name) == ("builtin.float"))
            flt = json.getNumber()
            return flt
        end
        if (((cls).name) == ("builtin.int"))
            i = (json).getNumber.round
            return i
        end
        if (((cls).name) == ("builtin.bool"))
            b = json.getBool()
            return b
        end
        result = cls.construct(DatawireQuarkCore::List.new([]))
    end
    if (((cls).name) == ("builtin.List"))
        list = result
        while ((idx) < (json.size())) do
            (list) << (::Quark.builtin.fromJSON((cls.getParameters())[0], nil, json.getListItem(idx)))
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
            (result)._setField(((f).name), (::Quark.builtin.fromJSON(f.getType(), nil, (json).getObjectItem((f).name))))
        end
    end
    return result


    nil
end

class CLASS_Resolver < Object
    attr_accessor 

    
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


end; def self.Resolver; CLASS_Resolver; end

class CLASS_ResponseHolder < Object
    attr_accessor :response, :failure

    
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
        
        return "builtin.ResponseHolder"

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


end; def self.ResponseHolder; CLASS_ResponseHolder; end

class CLASS_Service < Object
    attr_accessor 

    
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
        
        rpc = ::Quark.builtin.behaviors.RPC.new(self, methodName)
        return rpc.call(args)

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.Service; CLASS_Service; end

class CLASS_BaseService < Object
    attr_accessor 

    
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
        
        return "builtin.BaseService"

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
        
        rpc = ::Quark.builtin.behaviors.RPC.new(self, methodName)
        return rpc.call(args)

        nil
    end

    def __init_fields__()
        

        nil
    end


end; def self.BaseService; CLASS_BaseService; end

class CLASS_ServiceInstance < Object
    attr_accessor :serviceName, :url, :breaker

    
    def initialize(serviceName, url, failureLimit, retestDelay)
        
        self.__init_fields__
        (self).serviceName = serviceName
        (self).url = url
        (self).breaker = ::Quark.builtin.behaviors.CircuitBreaker.new((((("[") + (serviceName)) + (" at ")) + (url)) + ("]"), failureLimit, retestDelay)

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
            ::Quark.builtin.Client.logger.info(((("- CLOSE breaker for ") + ((self).serviceName)) + (" at ")) + ((self).url))
        end
        (self).breaker.succeed()

        nil
    end

    def fail(info)
        
        if (!(self.isActive()))
            ::Quark.builtin.Client.logger.warn(((("- OPEN breaker for ") + ((self).serviceName)) + (" at ")) + ((self).url))
        end
        (self).breaker.fail()

        nil
    end

    def _getClass()
        
        return "builtin.ServiceInstance"

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


end; def self.ServiceInstance; CLASS_ServiceInstance; end

class CLASS_DegenerateResolver < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def resolve(serviceName)
        
        return DatawireQuarkCore::List.new([serviceName])

        nil
    end

    def _getClass()
        
        return "builtin.DegenerateResolver"

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


end; def self.DegenerateResolver; CLASS_DegenerateResolver; end

class CLASS_Client < Object
    attr_accessor :resolver, :serviceName, :_timeout, :_failureLimit, :_retestDelay, :mutex, :instanceMap, :counter

    
    def initialize(serviceName)
        
        self.__init_fields__
        (self).serviceName = serviceName
        (self).resolver = ::Quark.builtin.DegenerateResolver.new()
        (self)._timeout = 0.0
        (self).mutex = ::Quark.DatawireQuarkCore::Lock.new()
        (self).instanceMap = {}
        (self).counter = 0
        failureLimit = (self)._getField("failureLimit")
        if ((failureLimit) != (nil))
            (self)._failureLimit = failureLimit
        end
        ::Quark.builtin.Client.logger.info((() + (" failureLimit ")) + (((self)._failureLimit).to_s))
        retestDelay = (self)._getField("retestDelay")
        if ((retestDelay) != (nil))
            (self)._retestDelay = retestDelay
        end
        ::Quark.builtin.Client.logger.info((() + (" retestDelay ")) + (((self)._retestDelay).to_s))

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
                instance = ::Quark.builtin.ServiceInstance.new((self).serviceName, url, @_failureLimit, @_retestDelay)
                ((self).instanceMap)[url] = (instance)
            end
            if (instance.isActive())
                ::Quark.builtin.Client.logger.info(((((("- ") + ((self).serviceName)) + (" using instance ")) + (((idx) + (1)).to_s)) + (": ")) + (url))
                result = instance
                break
            end
            idx = ((idx) + (1)) % ((urls).size)
            if ((idx) == (next_))
                ::Quark.builtin.Client.logger.info((("- ") + ((self).serviceName)) + (": no live instances! giving up."))
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
        
        return "builtin.Client"

        nil
    end

    def _getField(name)
        
        if ((name) == ("logger"))
            return ::Quark.builtin.Client.logger
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
            ::Quark.builtin.Client.logger = value
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


end; def self.Client; CLASS_Client; end

class CLASS_ServerResponder < Object
    attr_accessor :request, :response

    
    def initialize(request, response)
        
        self.__init_fields__
        (self).request = request
        (self).response = response

        nil
    end



    
    def onFuture(result)
        
        error = result.getError()
        if ((error) != (nil))
            @response.setCode(404)
        else
            (self).response.setBody(::Quark.builtin.toJSON(result, nil).toString())
            (self).response.setCode(200)
        end
        builtin::concurrent::Context.runtime().respond(@request, @response)

        nil
    end

    def _getClass()
        
        return "builtin.ServerResponder"

        nil
    end

    def _getField(name)
        
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
        
        if ((name) == ("request"))
            (self).request = value
        end
        if ((name) == ("response"))
            (self).response = value
        end

        nil
    end

    def __init_fields__()
        

        self.request = nil
        self.response = nil

        nil
    end


end; def self.ServerResponder; CLASS_ServerResponder; end

class CLASS_Server < Object
    attr_accessor :impl

    
    def initialize(impl)
        
        self.__init_fields__
        (self).impl = impl

        nil
    end



    
    def onHTTPRequest(request, response)
        
        body = request.getBody()
        envelope = DatawireQuarkCore::JSONObject.parse(body)
        if ((((envelope).getObjectItem("$method")) == (envelope.undefined())) || (((envelope).getObjectItem("rpc")) == (envelope.undefined())))
            response.setBody((("Failed to understand request.\n\n") + (body)) + ("\n"))
            response.setCode(400)
            builtin::concurrent::Context.runtime().respond(request, response)
        else
            methodName = (envelope).getObjectItem("$method").getString()
            json = (envelope).getObjectItem("rpc")
            method = builtin::reflect::QuarkClass.get(DatawireQuarkCore._getClass(self)).getField("impl").getType().getMethod(methodName)
            params = method.getParameters()
            args = DatawireQuarkCore::List.new([])
            idx = 0
            while ((idx) < ((params).size)) do
                (args) << (::Quark.builtin.fromJSON((params)[idx], nil, json.getListItem(idx)))
                idx = (idx) + (1)
            end
            result = method.invoke(@impl, args)
            result.onFinished(::Quark.builtin.ServerResponder.new(request, response))
        end

        nil
    end

    def onServletError(url, message)
        
        builtin::concurrent::Context.runtime().fail(((("RPC Server failed to register ") + (url)) + (" due to: ")) + (message))

        nil
    end

    def _getClass()
        
        return "builtin.Server<builtin.Object>"

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

    def serveHTTP(url)
        
        builtin::concurrent::Context.runtime().serveHTTP(url, self)

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

        nil
    end


end; def self.Server; CLASS_Server; end
end # module MODULE_builtin
end # module Quark
