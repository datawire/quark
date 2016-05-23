module Quark
require "quark"
def self.inheritance; Inheritance; end
module Inheritance
def self.super_; Super; end
module Super
require 'quark' # .../reflect inheritance/super_
require_relative '../quark_ffi_signatures_md' # 0 () ('inheritance',)


def self.A; A; end
class A < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static inheritance_super__A_ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_super__A_md }



    def initialize(name)
        
        self.__init_fields__

        nil
    end




    def greet()
        
        nil

        nil
    end

    def _getClass()
        
        return "inheritance.super_.A"

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
            (self).name = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        self.name = nil

        nil
    end


end
A.unlazy_statics

def self.B; B; end
class B < ::Quark.inheritance.super_.A
    extend ::DatawireQuarkCore::Static

    static inheritance_super__B_ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_super__B_md }



    def initialize()
        
        super(nil)

        nil
    end




    def greet()
        
        nil

        nil
    end

    def _getClass()
        
        return "inheritance.super_.B"

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
            (self).name = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
B.unlazy_statics
end # module Super
end # module Inheritance
end # module Quark
