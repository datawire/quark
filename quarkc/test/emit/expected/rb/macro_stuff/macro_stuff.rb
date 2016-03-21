module Quark
require "datawire-quark-core"
def self.macro_stuff; MODULE_macro_stuff; end
module MODULE_macro_stuff
class CLASS_Macro < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def test()
        
        m1 = ::Quark.macro_stuff.Macro.new()
        m2 = ::Quark.macro_stuff.Macro.new()
        m3 = m1
        m4 = m1
        m5 = m2
        m6 = m2
        m7 = m1
        m8 = m1
        m9 = m2
        m10 = m2

        nil
    end

    def _getClass()
        
        return "Macro"

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


end; def self.Macro; CLASS_Macro; end
end # module MODULE_macro_stuff
end # module Quark
