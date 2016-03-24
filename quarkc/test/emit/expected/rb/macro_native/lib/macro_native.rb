module Quark
require "builtin"
def self.macro_native; MODULE_macro_native; end
module MODULE_macro_native
def self.Native; CLASS_Native; end
class CLASS_Native < Object



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        n1 = ::Quark.macro_native.Native.new()
        n2 = ::Quark.macro_native.Native.new()
        n1n2 = ::Quark.macro_native.Native.new()
        n3 = n1n2

        nil
    end

    def _getClass()
        
        return "Native"

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
end # module MODULE_macro_native
end # module Quark
