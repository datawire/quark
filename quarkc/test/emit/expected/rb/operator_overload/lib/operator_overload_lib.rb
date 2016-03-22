module Quark
require "datawire-quark-core"
def self.operator_overload_lib; MODULE_operator_overload_lib; end
module MODULE_operator_overload_lib
def self.Overload; CLASS_Overload; end
class CLASS_Overload < Object
    attr_accessor :name

    
    def initialize(name)
        
        self.__init_fields__
        (self).name = name

        nil
    end



    
    def __add__(o)
        
        return o

        nil
    end

    def __mul__(o)
        
        return self

        nil
    end

    def test()
        
        o1 = ::Quark.operator_overload_lib.Overload.new("one")
        o2 = ::Quark.operator_overload_lib.Overload.new("two")
        o3 = o1.__add__(o2)
        DatawireQuarkCore.print((o3).name)
        o3 = o1.__mul__(o2)
        DatawireQuarkCore.print((o3).name)
        if ((o3) == (o1))
            DatawireQuarkCore.print("YAY!")
        end

        nil
    end

    def _getClass()
        
        return "Overload"

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

def self.main()
    
    o = ::Quark.operator_overload_lib.Overload.new("test")
    o.test()


    nil
end
end # module MODULE_operator_overload_lib
end # module Quark
