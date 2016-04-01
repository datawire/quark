module Quark
require "quark"
def self.inheritence; Inheritence; end
module Inheritence
require 'quark' # .../reflect
require_relative 'inheritence_md' # 0 () ()
require_relative 'inheritence' # 0 () ()


def self.A; A; end
class A < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static inheritence_A_ref: -> { ::Quark.inheritence_md.Root.inheritence_A_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        ::DatawireQuarkCore.print("A")

        nil
    end

    def _getClass()
        
        return "inheritence.A"

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
A.unlazy_statics

def self.B; B; end
class B < ::Quark.inheritence.A
    extend ::DatawireQuarkCore::Static

    static inheritence_B_ref: -> { ::Quark.inheritence_md.Root.inheritence_B_md }



    def initialize()
        
        super()

        nil
    end




    def foo()
        
        ::DatawireQuarkCore.print("B")

        nil
    end

    def _getClass()
        
        return "inheritence.B"

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
B.unlazy_statics

def self.C; C; end
class C < ::Quark.inheritence.A
    extend ::DatawireQuarkCore::Static

    static inheritence_C_ref: -> { ::Quark.inheritence_md.Root.inheritence_C_md }



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "inheritence.C"

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
C.unlazy_statics

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    a = ::Quark.inheritence.A.new()
    a.foo()
    b = ::Quark.inheritence.B.new()
    b.foo()
    c = ::Quark.inheritence.C.new()
    c.foo()
    ::DatawireQuarkCore.print("--")
    a = b
    a.foo()
    a = c
    a.foo()


    nil
end

if __FILE__ == $0 then ::Quark.inheritence.call_main() end

end # module Inheritence
end # module Quark
