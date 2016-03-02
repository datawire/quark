require "datawire-quark-core"
class A < Object
    attr_accessor :name

    
    def initialize(name)
        
        self.__init_fields__
        (self).name = name

        nil
    end



    
    def _getClass()
        
        return "A"

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

class B < A
    attr_accessor 

    
    def initialize(name)
        
        super(name)

        nil
    end



    
    def greet()
        
        DatawireQuarkCore.print(("Hello, my name is ") + ((self).name))

        nil
    end

    def _getClass()
        
        return "B"

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
        

        nil
    end


end

class C < A
    attr_accessor 

    
    def initialize(name)
        
        super(("C") + (name))

        nil
    end



    
    def greet()
        
        DatawireQuarkCore.print(("Greetings, my name is ") + ((self).name))

        nil
    end

    def _getClass()
        
        return "C"

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
        

        nil
    end


end

class X < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def _getClass()
        
        return "X"

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

class Y < X
    attr_accessor :name

    
    def initialize(name)
        
        super()
        (self).name = name

        nil
    end



    
    def test()
        
        DatawireQuarkCore.print((self).name)

        nil
    end

    def _getClass()
        
        return "Y"

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
        
        b = B.new("Bob")
        b.greet()
        c = C.new("arole")
        c.greet()
        y = Y.new("asdf")
        y.test()

        nil
    end


end
