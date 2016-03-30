module Quark
require "quark"
def self.no_spurious_cast; MODULE_no_spurious_cast; end
module MODULE_no_spurious_cast
require 'quark' # .../reflect
require_relative 'no_spurious_cast_md' # 0 () ()
require_relative 'no_spurious_cast' # 0 () ()

def self.A; CLASS_A; end
class CLASS_A < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static no_spurious_cast_A_ref: -> { ::Quark.no_spurious_cast_md.Root.no_spurious_cast_A_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "no_spurious_cast.A"

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
CLASS_A.unlazy_statics

def self.B; CLASS_B; end
class CLASS_B < ::Quark.no_spurious_cast.A
    extend ::DatawireQuarkCore::Static

    static no_spurious_cast_B_ref: -> { ::Quark.no_spurious_cast_md.Root.no_spurious_cast_B_md }



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "no_spurious_cast.B"

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
CLASS_B.unlazy_statics

def self.X; CLASS_X; end
class CLASS_X < ::DatawireQuarkCore::QuarkObject



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "no_spurious_cast.X<quark.Object>"

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
class CLASS_Y < ::Quark.no_spurious_cast.X
    extend ::DatawireQuarkCore::Static

    static no_spurious_cast_X_quark_int__ref: -> { ::Quark.no_spurious_cast_md.Root.no_spurious_cast_X_quark_int__md }
    static no_spurious_cast_Y_ref: -> { ::Quark.no_spurious_cast_md.Root.no_spurious_cast_Y_md }



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "no_spurious_cast.Y"

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
CLASS_Y.unlazy_statics

def self.main()
    
    a = ::Quark.no_spurious_cast.B.new()
    x = ::Quark.no_spurious_cast.Y.new()


    nil
end

if __FILE__ == $0
    ::Quark.no_spurious_cast.main()
end

end # module MODULE_no_spurious_cast
end # module Quark
