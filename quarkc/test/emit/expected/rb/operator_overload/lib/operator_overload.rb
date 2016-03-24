module Quark
require "quark"
def self.operator_overload; MODULE_operator_overload; end
module MODULE_operator_overload
require 'quark' # .../reflect
require_relative 'operator_overload_md' # 0 () ()
require_relative 'operator_overload' # 0 () ()

def self.Overload; CLASS_Overload; end
class CLASS_Overload < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static operator_overload_Overload_ref: -> { ::Quark.operator_overload_md.Root.operator_overload_Overload_md }



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
        
        o1 = ::Quark.operator_overload.Overload.new("one")
        o2 = ::Quark.operator_overload.Overload.new("two")
        o3 = o1.__add__(o2)
        ::DatawireQuarkCore.print((o3).name)
        o3 = o1.__mul__(o2)
        ::DatawireQuarkCore.print((o3).name)
        if ((o3) == (o1))
            ::DatawireQuarkCore.print("YAY!")
        end

        nil
    end

    def _getClass()
        
        return "operator_overload.Overload"

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
CLASS_Overload.unlazy_statics

def self.main()
    
    o = ::Quark.operator_overload.Overload.new("test")
    o.test()


    nil
end

if __FILE__ == $0
    ::Quark.operator_overload.main()
end

end # module MODULE_operator_overload
end # module Quark
