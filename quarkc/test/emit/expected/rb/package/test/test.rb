require "datawire-quark-core"
require "../../builtin"
require "../../package_md"


class Functions < Object
    

    

    
    def self.go()
        
        DatawireQuarkCore.print("GOGO!!")

        nil
    end


end

class Test < Object
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


end
