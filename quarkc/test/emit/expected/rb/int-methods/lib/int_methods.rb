module Quark
require "quark"
def self.int_methods; IntMethods; end
module IntMethods
require 'quark' # .../reflect
require_relative 'int_methods_md' # 0 () ()
require_relative 'int_methods' # 0 () ()


def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static int_methods_Test_ref: -> { ::Quark.int_methods_md.Root.int_methods_Test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test_()
        
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
Test.unlazy_statics

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::Quark.int_methods.Test.new().test_()


    nil
end

if __FILE__ == $0 then ::Quark.int_methods.call_main() end

end # module IntMethods
end # module Quark
