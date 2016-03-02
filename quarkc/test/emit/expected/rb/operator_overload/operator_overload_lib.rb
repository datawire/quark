require "datawire-quark-core"
class Overload < Object
    attr_accessor :name

    
    def initialize(name)
        
        self.__init_fields__
        (self).name = name

        nil
    end



    
    def __add__(o)
        
        return o

        nil
    end

    def __mul__(o)
        
        return self

        nil
    end

    def test()
        
        o1 = Overload.new("one")
        o2 = Overload.new("two")
        o3 = o1.__add__(o2)
        DatawireQuarkCore.print((o3).name)
        o3 = o1.__mul__(o2)
        DatawireQuarkCore.print((o3).name)
        if ((o3) == (o1))
            DatawireQuarkCore.print("YAY!")
        end

        nil
    end

    def _getClass()
        
        return "Overload"

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
        
        o = Overload.new("test")
        o.test()

        nil
    end


end
