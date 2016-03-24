module Quark
require "builtin"
def self.default_constructors_lib; MODULE_default_constructors_lib; end
module MODULE_default_constructors_lib
def self.A; CLASS_A; end
class CLASS_A < Object
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

def self.B; CLASS_B; end
class CLASS_B < ::Quark.default_constructors_lib.A



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

def self.C; CLASS_C; end
class CLASS_C < ::Quark.default_constructors_lib.A



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

def self.X; CLASS_X; end
class CLASS_X < Object



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

def self.Y; CLASS_Y; end
class CLASS_Y < ::Quark.default_constructors_lib.X
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

def self.main()
    
    b = ::Quark.default_constructors_lib.B.new("Bob")
    b.greet()
    c = ::Quark.default_constructors_lib.C.new("arole")
    c.greet()
    y = ::Quark.default_constructors_lib.Y.new("asdf")
    y.test()


    nil
end
end # module MODULE_default_constructors_lib
end # module Quark
