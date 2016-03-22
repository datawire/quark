module Quark
require "datawire-quark-core"
def self.test; MODULE_test; end
module MODULE_test
def self.test; MODULE_test; end
module MODULE_test
# require 'builtin' # .../reflect test/test
# require 'package_md' # in test/test 

def self.go()
    
    DatawireQuarkCore.print("GOGO!!")


    nil
end

def self.Test; CLASS_Test; end
class CLASS_Test < Object
    attr_accessor :size
    extend DatawireQuarkCore::Static


    static test_test_Test_ref: -> { ::Quark.package_md.Root.test_test_Test_md }


    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def go()
        
        DatawireQuarkCore.print("TTGO!!")

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
end # module MODULE_test
end # module MODULE_test
end # module Quark
