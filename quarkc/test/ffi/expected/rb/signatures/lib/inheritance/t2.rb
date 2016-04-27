module Quark
require "quark"
def self.inheritance; Inheritance; end
module Inheritance
def self.t2; T2; end
module T2
require 'quark' # .../reflect inheritance/t2
require_relative '../quark_ffi_signatures_md' # 0 () ('inheritance',)


def self.A; A; end
class A < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static inheritance_t2_A_ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_t2_A_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "inheritance.t2.A"

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
class B < ::Quark.inheritance.t2.A
    extend ::DatawireQuarkCore::Static

    static inheritance_t2_B_ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_t2_B_md }



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "inheritance.t2.B"

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
        
        return "inheritance.t2.X<quark.Object>"

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
class Y < ::Quark.inheritance.t2.X
    extend ::DatawireQuarkCore::Static

    static inheritance_t2_X_quark_int__ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_t2_X_quark_int__md }
    static inheritance_t2_Y_ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_t2_Y_md }



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "inheritance.t2.Y"

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
end # module T2
end # module Inheritance
end # module Quark
