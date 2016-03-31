module Quark
def self.extending_primitives_md; ExtendingPrimitivesMd; end
module ExtendingPrimitivesMd
require 'quark' # .../reflect
# for ('extending_primitives_md',): require_relative 'pkg' # 0 () ()

def self.pkg_C_event1_Method; PkgCEvent1Method; end
class PkgCEvent1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "event1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.event1()
        return nil

        nil
    end

    def _getClass()
        
        return nil

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

def self.pkg_C; PkgC; end
class PkgC < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.extending_primitives_md.pkg_C.new() }



    def initialize()
        
        super("pkg.C")
        (self).name = "pkg.C"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.extending_primitives_md.pkg_C_event1_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.pkg.C.new()

        nil
    end

    def _getClass()
        
        return nil

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
PkgC.unlazy_statics

def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static pkg_C_md: -> { ::Quark.extending_primitives_md.pkg_C.singleton }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return nil

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
Root.unlazy_statics
end # module ExtendingPrimitivesMd
end # module Quark
