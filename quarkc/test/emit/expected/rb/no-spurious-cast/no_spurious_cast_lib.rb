module Quark
require "datawire-quark-core"
def self.no_spurious_cast_lib; MODULE_no_spurious_cast_lib; end
module MODULE_no_spurious_cast_lib
class CLASS_A < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

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


end; def self.A; CLASS_A; end

class CLASS_B < ::Quark.no_spurious_cast_lib.A
    attr_accessor 

    
    def initialize()
        
        super()

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


end; def self.B; CLASS_B; end

class CLASS_X < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def _getClass()
        
        return "X<builtin.Object>"

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


end; def self.X; CLASS_X; end

class CLASS_Y < ::Quark.no_spurious_cast_lib.X
    attr_accessor 

    
    def initialize()
        
        super()

        nil
    end



    
    def _getClass()
        
        return "Y"

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


end; def self.Y; CLASS_Y; end

def self.main()
    
    a = ::Quark.no_spurious_cast_lib.B.new()
    x = ::Quark.no_spurious_cast_lib.Y.new()


    nil
end
end # module MODULE_no_spurious_cast_lib
end # module Quark
