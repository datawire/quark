require "datawire-quark-core"
class A < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("A")

        nil
    end

    def _getClass()
        
        return "A"

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

class B < A
    attr_accessor 

    
    def initialize()
        
        super()

        nil
    end



    
    def foo()
        
        DatawireQuarkCore.print("B")

        nil
    end

    def _getClass()
        
        return "B"

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

class C < A
    attr_accessor 

    
    def initialize()
        
        super()

        nil
    end



    
    def _getClass()
        
        return "C"

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
        
        a = A.new()
        a.foo()
        b = B.new()
        b.foo()
        c = C.new()
        c.foo()
        DatawireQuarkCore.print("--")
        a = b
        a.foo()
        a = c
        a.foo()

        nil
    end


end
