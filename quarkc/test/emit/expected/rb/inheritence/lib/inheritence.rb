module Quark
require "quark"
def self.inheritence; MODULE_inheritence; end
module MODULE_inheritence
require 'quark' # .../reflect
require_relative 'inheritence_md' # 0 () ()
require_relative 'inheritence' # 0 () ()

def self.A; CLASS_A; end
class CLASS_A < ::DatawireQuarkCore::QuarkObject
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
CLASS_A.unlazy_statics

def self.B; CLASS_B; end
class CLASS_B < ::Quark.inheritence.A
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
CLASS_B.unlazy_statics

def self.C; CLASS_C; end
class CLASS_C < ::Quark.inheritence.A
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
CLASS_C.unlazy_statics

def self.main()
    
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

if __FILE__ == $0
    ::Quark.inheritence.main()
end

end # module MODULE_inheritence
end # module Quark
