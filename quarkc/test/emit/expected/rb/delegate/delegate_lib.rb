require "datawire-quark-core"
class Message < Object
    attr_accessor 

    
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

class Ping < Message
    attr_accessor 

    
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

class Pong < Message
    attr_accessor 

    
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

class Test < Object
    attr_accessor 

    
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
            return Pong.new()
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

class Functions < Object
    

    

    
    def self.main()
        
        t = Test.new()
        t.foo("one", "two", 3)
        DatawireQuarkCore.print(t.hello(Ping.new()).toString())

        nil
    end


end
