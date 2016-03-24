module Quark
require "quark"
def self.int_methods; MODULE_int_methods; end
module MODULE_int_methods
require 'quark' # .../reflect
require_relative 'int_methods_md' # 0 () ()
require_relative 'int_methods' # 0 () ()

def self.Test; CLASS_Test; end
class CLASS_Test < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static int_methods_Test_ref: -> { ::Quark.int_methods_md.Root.int_methods_Test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        x = 1
        y = 2
        z = (((x) + (y)) - (3)) * (4)
        ::DatawireQuarkCore.print(z)
        four = (2) + (2)
        ::DatawireQuarkCore.print(four)

        nil
    end

    def _getClass()
        
        return "int_methods.Test"

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
CLASS_Test.unlazy_statics

def self.main()
    
    ::Quark.int_methods.Test.new().test()


    nil
end

if __FILE__ == $0
    ::Quark.int_methods.main()
end

end # module MODULE_int_methods
end # module Quark
