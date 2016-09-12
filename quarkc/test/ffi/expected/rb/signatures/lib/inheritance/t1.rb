module Quark
require "quark"
def self.inheritance; Inheritance; end
module Inheritance
def self.t1; T1; end
module T1
require 'quark' # .../reflect inheritance/t1


def self.A; A; end
class A < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static inheritance_t1_A_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        nil

        nil
    end

    def _getClass()
        
        return "inheritance.t1.A"

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
class B < ::Quark.inheritance.t1.A
    extend ::DatawireQuarkCore::Static

    static inheritance_t1_B_ref: -> { nil }



    def initialize()
        
        super()

        nil
    end




    def foo()
        
        nil

        nil
    end

    def _getClass()
        
        return "inheritance.t1.B"

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

def self.C; C; end
class C < ::Quark.inheritance.t1.A
    extend ::DatawireQuarkCore::Static

    static inheritance_t1_C_ref: -> { nil }



    def initialize()
        
        super()

        nil
    end




    def _getClass()
        
        return "inheritance.t1.C"

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
C.unlazy_statics


require_relative '../quark_ffi_signatures_md' # 0 () ('inheritance',)

end # module T1
end # module Inheritance
end # module Quark
