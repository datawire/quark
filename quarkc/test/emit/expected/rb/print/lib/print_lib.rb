module Quark
require "builtin"
def self.print_lib; MODULE_print_lib; end
module MODULE_print_lib
def self.Test; CLASS_Test; end
class CLASS_Test < Object



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        DatawireQuarkCore.print("Hello World!")

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

def self.main()
    
    ::Quark.print_lib.Test.new().test()


    nil
end
end # module MODULE_print_lib
end # module Quark
