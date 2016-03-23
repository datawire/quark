module Quark
def self.delegate_lib; MODULE_delegate_lib; end
module MODULE_delegate_lib
def self.Message; CLASS_Message; end
class CLASS_Message < Object



    def initialize()
        self.__init_fields__

        nil
    end




    def encode()
        
        return "ENCODED"

        nil
    end

    def _getClass()
        
        return "Message"

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

def self.Ping; CLASS_Ping; end
class CLASS_Ping < ::Quark.delegate_lib.Message



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "Ping"

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

def self.Pong; CLASS_Pong; end
class CLASS_Pong < ::Quark.delegate_lib.Message



    def initialize()
        
        super()

        nil
    end




    def toString()
        
        return "PONG"

        nil
    end

    def _getClass()
        
        return "Pong"

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

def self.Test; CLASS_Test; end
class CLASS_Test < Object



    def initialize()
        self.__init_fields__

        nil
    end




    def bar(name, args, options)
        
        DatawireQuarkCore.print(args)
        return nil

        nil
    end

    def foo(foo, bar, baz)
        
        self.bar("foo", DatawireQuarkCore::List.new([foo, bar, baz]), DatawireQuarkCore::List.new([]))

        nil
    end

    def rpc(name, msg, options)
        
        DatawireQuarkCore.print(msg.encode())
        if ((name) == ("hello"))
            return ::Quark.delegate_lib.Pong.new()
        else
            return nil
        end

        nil
    end

    def hello(ping)
        
        return self.rpc("hello", ping, DatawireQuarkCore::List.new([]))

        nil
    end

    def _getClass()
        
        return "Test"

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

def self.main()
    
    t = ::Quark.delegate_lib.Test.new()
    t.foo("one", "two", 3)
    DatawireQuarkCore.print(t.hello(::Quark.delegate_lib.Ping.new()).toString())


    nil
end
end # module MODULE_delegate_lib
end # module Quark
