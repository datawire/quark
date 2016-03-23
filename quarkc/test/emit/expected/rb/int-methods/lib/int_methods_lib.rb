module Quark
def self.int_methods_lib; MODULE_int_methods_lib; end
module MODULE_int_methods_lib
def self.Test; CLASS_Test; end
class CLASS_Test < Object



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        x = 1
        y = 2
        z = (((x) + (y)) - (3)) * (4)
        DatawireQuarkCore.print(z)
        four = (2) + (2)
        DatawireQuarkCore.print(four)

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
    
    ::Quark.int_methods_lib.Test.new().test()


    nil
end
end # module MODULE_int_methods_lib
end # module Quark
