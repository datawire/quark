module Quark
require "quark"
def self.test; Test; end
module Test
def self.test; Test; end
module Test
require 'quark' # .../reflect test/test
require_relative '../package_md' # 0 () ('test',)

def self.go()
    
    ::DatawireQuarkCore.print("GOGO!!")


    nil
end

def self.Test; Test; end
class Test < ::DatawireQuarkCore::QuarkObject
    attr_accessor :size
    extend ::DatawireQuarkCore::Static

    static test_test_Test_ref: -> { ::Quark.package_md.Root.test_test_Test_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def go()
        
        ::DatawireQuarkCore.print("TTGO!!")

        nil
    end

    def _getClass()
        
        return "test.test.Test"

        nil
    end

    def _getField(name)
        
        if ((name) == ("size"))
            return (self).size
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("size"))
            (self).size = value
        end

        nil
    end

    def __init_fields__()
        

        self.size = nil

        nil
    end


end
Test.unlazy_statics
end # module Test
end # module Test
end # module Quark
