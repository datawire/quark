module Quark
require "datawire-quark-core"
def self.super_lib; MODULE_super_lib; end
module MODULE_super_lib
def self.A; CLASS_A; end
class CLASS_A < Object
    attr_accessor :name

    
    def initialize(name)
        
        self.__init_fields__
        (self).name = name

        nil
    end



    
    def greet()
        
        DatawireQuarkCore.print("Hello")

        nil
    end

    def _getClass()
        
        return "A"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        self.name = nil

        nil
    end


end

def self.B; CLASS_B; end
class CLASS_B < ::Quark.super_lib.A
    attr_accessor 

    
    def initialize()
        
        super("Bob")

        nil
    end



    
    def greet()
        
        method(:greet).super_method.call()
        DatawireQuarkCore.print(("I'm ") + ((self).name))

        nil
    end

    def _getClass()
        
        return "B"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end

def self.main()
    
    b = ::Quark.super_lib.B.new()
    b.greet()


    nil
end
end # module MODULE_super_lib
end # module Quark
