require "datawire-quark-core"
require "../builtin"
require "../constructors_md"


class Test < Object
    attr_accessor :name

    
    def initialize(name)
        
        self.__init_fields__
        (self).name = name

        nil
    end



    
    def _getClass()
        
        return "test2.Test"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        self.name = nil

        nil
    end


end

class Functions < Object
    

    

    
    def self.go()
        
        t = Test.new("Hello World!!")
        DatawireQuarkCore.print((t).name)
        DatawireQuarkCore.print((Test.new("Hello World!!")).name)

        nil
    end


end
