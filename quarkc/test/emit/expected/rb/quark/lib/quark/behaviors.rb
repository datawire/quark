module Quark
def self.quark; Quark; end
module Quark
def self.behaviors; Behaviors; end
module Behaviors
require_relative 'reflect' # 1 () ()
require_relative '../quark' # 0 () ('quark',)
require_relative 'concurrent' # 1 () ()
require_relative '../quark_md' # 0 () ('quark',)


def self.RPC; RPC; end
class RPC < ::DatawireQuarkCore::QuarkObject
    attr_accessor :service, :returned, :timeout, :methodName, :instance
    extend ::DatawireQuarkCore::Static

    static quark_behaviors_RPC_ref: -> { ::Quark.quark_md.Root.quark_behaviors_RPC_md }



    def initialize(service, methodName)
        
        self.__init_fields__
        timeout = (service)._getField("timeout")
        if (((timeout) == (nil)) || ((timeout) <= (0.0)))
            timeout = 10.0
        end
        override = service.getTimeout()
        if (((override) != (nil)) && ((override) > (0.0)))
            timeout = override
        end
        (self).returned = ::Quark.quark.reflect.QuarkClass.get(::DatawireQuarkCore._getClass(service)).getMethod(methodName).getType()
        (self).timeout = timeout
        (self).methodName = methodName
        (self).service = service

        nil
    end




    def call(args)
        
        result = nil
        (self).instance = (self).service.getInstance()
        if (((self).instance) != (nil))
            request = ::DatawireQuarkCore::HTTP::Request.new((self).instance.getURL())
            json = ::Quark.quark.toJSON(args, nil)
            envelope = ::DatawireQuarkCore::JSONObject.new
            (envelope).setObjectItem(("$method"), (::DatawireQuarkCore::JSONObject.new.setString((self).methodName)))
            (envelope).setObjectItem(("$context"), (::DatawireQuarkCore::JSONObject.new.setString("TBD")))
            (envelope).setObjectItem(("rpc"), (json))
            body = envelope.toString()
            request.setBody(body)
            request.setMethod("POST")
            rpc = ::Quark.quark.behaviors.RPCRequest.new(args, self)
            result = rpc.call(request)
        else
            result = @returned.construct(::DatawireQuarkCore::List.new([]))
            result.finish("all services are down")
        end
        ::Quark.quark.concurrent.FutureWait.waitFor(result, 10.0)
        return result

        nil
    end

    def succeed(info)
        
        (self).instance.succeed(info)

        nil
    end

    def fail(info)
        
        (self).instance.fail(info)

        nil
    end

    def toString()
        
        return (((((("RPC ") + ((self).service.getName())) + (" at ")) + ((self).instance.getURL())) + (": ")) + ((self).methodName)) + ("(...)")

        nil
    end

    def _getClass()
        
        return "quark.behaviors.RPC"

        nil
    end

    def _getField(name)
        
        if ((name) == ("service"))
            return (self).service
        end
        if ((name) == ("returned"))
            return (self).returned
        end
        if ((name) == ("timeout"))
            return (self).timeout
        end
        if ((name) == ("methodName"))
            return (self).methodName
        end
        if ((name) == ("instance"))
            return (self).instance
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("service"))
            (self).service = value
        end
        if ((name) == ("returned"))
            (self).returned = value
        end
        if ((name) == ("timeout"))
            (self).timeout = value
        end
        if ((name) == ("methodName"))
            (self).methodName = value
        end
        if ((name) == ("instance"))
            (self).instance = value
        end

        nil
    end

    def __init_fields__()
        

        self.service = nil
        self.returned = nil
        self.timeout = nil
        self.methodName = nil
        self.instance = nil

        nil
    end


end
RPC.unlazy_statics

def self.RPCRequest; RPCRequest; end
class RPCRequest < ::DatawireQuarkCore::QuarkObject
    attr_accessor :rpc, :retval, :args, :timeout
    extend ::DatawireQuarkCore::Static

    static quark_behaviors_RPCRequest_ref: -> { ::Quark.quark_md.Root.quark_behaviors_RPCRequest_md }



    def initialize(args, rpc)
        
        self.__init_fields__
        (self).retval = (rpc).returned.construct(::DatawireQuarkCore::List.new([]))
        (self).args = args
        (self).timeout = ::Quark.quark.concurrent.Timeout.new((rpc).timeout)
        (self).rpc = rpc

        nil
    end




    def call(request)
        
        (self).timeout.start(self)
        ::Quark.quark.concurrent.Context.runtime().request(request, self)
        return (self).retval

        nil
    end

    def onHTTPResponse(rq, response)
        
        info = nil
        (self).timeout.cancel()
        if ((response.getCode()) != (200))
            info = (((self).rpc.toString()) + (" failed: Server returned error ")) + ((response.getCode()).to_s)
            (self).retval.finish(info)
            (self).rpc.fail(info)
            return
        end
        body = response.getBody()
        obj = ::DatawireQuarkCore::JSONObject.parse(body)
        classname = (obj).getObjectItem("$class").getString()
        if ((classname) == (nil))
            info = ((self).rpc.toString()) + (" failed: Server returned unrecognizable content")
            (self).retval.finish(info)
            (self).rpc.fail(info)
            return
        else
            ::Quark.quark.fromJSON(((self).rpc).returned, (self).retval, obj)
            (self).retval.finish(nil)
            (self).rpc.succeed("Success in the future...")
        end

        nil
    end

    def onTimeout(timeout)
        
        (self).retval.finish("request timed out")
        (self).rpc.fail("request timed out")

        nil
    end

    def _getClass()
        
        return "quark.behaviors.RPCRequest"

        nil
    end

    def _getField(name)
        
        if ((name) == ("rpc"))
            return (self).rpc
        end
        if ((name) == ("retval"))
            return (self).retval
        end
        if ((name) == ("args"))
            return (self).args
        end
        if ((name) == ("timeout"))
            return (self).timeout
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("rpc"))
            (self).rpc = value
        end
        if ((name) == ("retval"))
            (self).retval = value
        end
        if ((name) == ("args"))
            (self).args = value
        end
        if ((name) == ("timeout"))
            (self).timeout = value
        end

        nil
    end

    def onHTTPInit(request)
        
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
        

        self.rpc = nil
        self.retval = nil
        self.args = nil
        self.timeout = nil

        nil
    end


end
RPCRequest.unlazy_statics

def self.CircuitBreaker; CircuitBreaker; end
class CircuitBreaker < ::DatawireQuarkCore::QuarkObject
    attr_accessor :id, :failureLimit, :retestDelay, :active, :failureCount, :mutex
    extend ::DatawireQuarkCore::Static

    static quark_behaviors_CircuitBreaker_ref: -> { ::Quark.quark_md.Root.quark_behaviors_CircuitBreaker_md }



    def initialize(id, failureLimit, retestDelay)
        
        self.__init_fields__
        (self).id = id
        (self).failureLimit = failureLimit
        (self).retestDelay = retestDelay

        nil
    end




    def succeed()
        
        (self).mutex.acquire()
        if (((self).failureCount) > (0))
            ::Quark.quark.Client.logger.info(("- CLOSE breaker on ") + ((self).id))
        end
        (self).failureCount = 0
        (self).mutex.release()

        nil
    end

    def fail()
        
        doSchedule = false
        (self).mutex.acquire()
        (self).failureCount = ((self).failureCount) + (1)
        if (((self).failureCount) >= ((self).failureLimit))
            (self).active = false
            doSchedule = true
            ::Quark.quark.Client.logger.warn(("- OPEN breaker on ") + ((self).id))
        end
        (self).mutex.release()
        if (doSchedule)
            ::Quark.quark.concurrent.Context.runtime().schedule(self, (self).retestDelay)
        end

        nil
    end

    def onExecute(runtime)
        
        (self).mutex.acquire()
        (self).active = true
        ::Quark.quark.Client.logger.warn(("- RETEST breaker on ") + ((self).id))
        (self).mutex.release()

        nil
    end

    def _getClass()
        
        return "quark.behaviors.CircuitBreaker"

        nil
    end

    def _getField(name)
        
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("failureLimit"))
            return (self).failureLimit
        end
        if ((name) == ("retestDelay"))
            return (self).retestDelay
        end
        if ((name) == ("active"))
            return (self).active
        end
        if ((name) == ("failureCount"))
            return (self).failureCount
        end
        if ((name) == ("mutex"))
            return (self).mutex
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("failureLimit"))
            (self).failureLimit = value
        end
        if ((name) == ("retestDelay"))
            (self).retestDelay = value
        end
        if ((name) == ("active"))
            (self).active = value
        end
        if ((name) == ("failureCount"))
            (self).failureCount = value
        end
        if ((name) == ("mutex"))
            (self).mutex = value
        end

        nil
    end

    def __init_fields__()
        

        self.id = nil
        self.failureLimit = nil
        self.retestDelay = nil
        self.active = true
        self.failureCount = 0
        self.mutex = ::DatawireQuarkCore::Lock.new()

        nil
    end


end
CircuitBreaker.unlazy_statics
end # module Behaviors
end # module Quark
end # module Quark
