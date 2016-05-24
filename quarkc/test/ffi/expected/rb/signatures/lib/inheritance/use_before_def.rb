module Quark
require "quark"
def self.inheritance; Inheritance; end
module Inheritance
def self.use_before_def; UseBeforeDef; end
module UseBeforeDef
require 'quark' # .../reflect inheritance/use_before_def
require_relative '../quark_ffi_signatures_md' # 0 () ('inheritance',)


def self.Bar; Bar; end
class Bar < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static inheritance_use_before_def_Bar_ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_use_before_def_Bar_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def go()
        
        nil

        nil
    end

    def _getClass()
        
        return "inheritance.use_before_def.Bar"

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
Bar.unlazy_statics

def self.Foo; Foo; end
class Foo < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static inheritance_use_before_def_Foo_ref: -> { ::Quark.quark_ffi_signatures_md.Root.inheritance_use_before_def_Foo_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "inheritance.use_before_def.Foo"

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
Foo.unlazy_statics
end # module UseBeforeDef
end # module Inheritance
end # module Quark
