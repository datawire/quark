module Quark
require "quark"
def self.quark_delegate; QuarkDelegate; end
module QuarkDelegate
require 'quark' # .../reflect
require_relative 'quark_delegate_md' # 0 () ()
require_relative 'quark_delegate' # 0 () ()

def self.Message; Message; end
class Message < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_delegate_Message_ref: -> { ::Quark.quark_delegate_md.Root.quark_delegate_Message_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def encode()
        
        return "ENCODED"

        nil
    end

    def _getClass()
        
        return "quark_delegate.Message"

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
Message.unlazy_statics

def self.Ping; Ping; end
class Ping < ::Quark.quark_delegate.Message
    extend ::DatawireQuarkCore::Static

    static quark_delegate_Ping_ref: -> { ::Quark.quark_delegate_md.Root.quark_delegate_Ping_md }



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "quark_delegate.Ping"

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
Ping.unlazy_statics

def self.Pong; Pong; end
class Pong < ::Quark.quark_delegate.Message
    extend ::DatawireQuarkCore::Static

    static quark_delegate_Pong_ref: -> { ::Quark.quark_delegate_md.Root.quark_delegate_Pong_md }



    def initialize()
        
        super()

        nil
    end




    def toString()
        
        return "PONG"

        nil
    end

    def _getClass()
        
        return "quark_delegate.Pong"

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
Pong.unlazy_statics

def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_delegate_Test_ref: -> { ::Quark.quark_delegate_md.Root.quark_delegate_Test_md }
    static quark_List_quark_Object__ref: -> { ::Quark.quark_delegate_md.Root.quark_List_quark_Object__md }



    def initialize()
        self.__init_fields__

        nil
    end




    def bar(name, args, options)
        
        ::DatawireQuarkCore.print(args)
        return nil

        nil
    end

    def foo(foo, bar, baz)
        
        self.bar("foo", ::DatawireQuarkCore::List.new([foo, bar, baz]), ::DatawireQuarkCore::List.new([]))

        nil
    end

    def rpc(name, msg, options)
        
        ::DatawireQuarkCore.print(msg.encode())
        if ((name) == ("hello"))
            return ::Quark.quark_delegate.Pong.new()
        else
            return nil
        end

        nil
    end

    def hello(ping)
        
        return self.rpc("hello", ping, ::DatawireQuarkCore::List.new([]))

        nil
    end

    def _getClass()
        
        return "quark_delegate.Test"

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
Test.unlazy_statics

def self.main()
    
    t = ::Quark.quark_delegate.Test.new()
    t.foo("one", "two", 3)
    ::DatawireQuarkCore.print(t.hello(::Quark.quark_delegate.Ping.new()).toString())


    nil
end

if __FILE__ == $0
    ::Quark.quark_delegate.main()
end

end # module QuarkDelegate
end # module Quark
