module Quark
require "builtin"
def self.stuff_lib; MODULE_stuff_lib; end
module MODULE_stuff_lib
def self.Test; CLASS_Test; end
class CLASS_Test < Object



    def initialize()
        self.__init_fields__

        nil
    end




    def foo(t)
        
        return ::Quark.stuff_lib.Test.new()

        nil
    end

    def test()
        
        x = 2
        y = 2
        z = (x) + (y)
        DatawireQuarkCore.print(z)
        hello = "hello"
        DatawireQuarkCore.print(hello)
        t1 = ::Quark.stuff_lib.Test.new()
        t2 = t1.foo(t1)
        if ((t2) != (t1))
            DatawireQuarkCore.print("YAY!")
        end
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
    
    ::Quark.stuff_lib.Test.new().test()


    nil
end
end # module MODULE_stuff_lib
end # module Quark
