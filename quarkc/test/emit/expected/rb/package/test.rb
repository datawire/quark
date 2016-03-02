require "datawire-quark-core"
require "../builtin"
require "./test"
require "../package_md"


class Functions < Object
    

    

    
    def self.go()
        
        DatawireQuarkCore.print("GO!")

        nil
    end


end

class Test < Object
    attr_accessor :name

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def go()
        
        DatawireQuarkCore.print("TGO!")

        nil
    end

    def _getClass()
        
        return "test.Test"

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
    

    

    
    def self.main()
        
        Functions.go()
        Functions.test__go()
        t1 = Test.new()
        t2 = test.Test.new()
        t1.go()
        t2.go()

        nil
    end


end
