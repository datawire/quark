module Quark
def self.inheritence_lib; MODULE_inheritence_lib; end
module MODULE_inheritence_lib
def self.A; CLASS_A; end
class CLASS_A < Object



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

def self.B; CLASS_B; end
class CLASS_B < ::Quark.inheritence_lib.A



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

def self.C; CLASS_C; end
class CLASS_C < ::Quark.inheritence_lib.A



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

def self.main()
    
    a = ::Quark.inheritence_lib.A.new()
    a.foo()
    b = ::Quark.inheritence_lib.B.new()
    b.foo()
    c = ::Quark.inheritence_lib.C.new()
    c.foo()
    DatawireQuarkCore.print("--")
    a = b
    a.foo()
    a = c
    a.foo()


    nil
end
end # module MODULE_inheritence_lib
end # module Quark
