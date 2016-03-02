require "datawire-quark-core"
class Test < Object
    attr_accessor 

    
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

class Functions < Object
    

    

    
    def self.main()
        
        Test.new().test()

        nil
    end


end
