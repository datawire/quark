module Quark
require "quark"
def self.no_spurious_cast; NoSpuriousCast; end
module NoSpuriousCast
require 'quark' # .../reflect
require_relative 'no_spurious_cast_md' # 0 () ()
require_relative 'no_spurious_cast' # 0 () ()


def self.A; A; end
class A < ::DatawireQuarkCore::QuarkObject
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
A.unlazy_statics

def self.B; B; end
class B < ::Quark.no_spurious_cast.A
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
        
        super

        nil
    end


end
B.unlazy_statics

def self.X; X; end
class X < ::DatawireQuarkCore::QuarkObject



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

def self.Y; Y; end
class Y < ::Quark.no_spurious_cast.X
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
        
        super

        nil
    end


end
Y.unlazy_statics

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    a = ::Quark.no_spurious_cast.B.new()
    x = ::Quark.no_spurious_cast.Y.new()


    nil
end

if __FILE__ == $0 then ::Quark.no_spurious_cast.call_main() end

end # module NoSpuriousCast
end # module Quark
