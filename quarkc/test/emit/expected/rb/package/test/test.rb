module Quark
require "datawire-quark-core"
def self.test; MODULE_test; end
module MODULE_test
def self.test; MODULE_test; end
module MODULE_test
# require_relatve "builtin/reflect.rb"
# require_relatve "package_md.rb"

def self.go()
    
    DatawireQuarkCore.print("GOGO!!")


    nil
end

class CLASS_Test < Object
    attr_accessor :size

    
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


end; def self.Test; CLASS_Test; end
end # module MODULE_test
end # module MODULE_test
end # module Quark
