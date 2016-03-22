module Quark
require "datawire-quark-core"
def self.macro_pie_lib; MODULE_macro_pie_lib; end
module MODULE_macro_pie_lib
def self.Pie; CLASS_Pie; end
class CLASS_Pie < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def test()
        
        p = ::Quark.macro_pie_lib.Pie.new()
        x = 3

        nil
    end

    def _getClass()
        
        return "Pie"

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
    
    DatawireQuarkCore.print(3)


    nil
end
end # module MODULE_macro_pie_lib
end # module Quark
