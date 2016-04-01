module Quark
def self.inheritence_md; InheritenceMd; end
module InheritenceMd
require 'quark' # .../reflect
# for ('inheritence_md',): require_relative 'inheritence' # 0 () ()


def self.inheritence_A_foo_Method; InheritenceAFooMethod; end
class InheritenceAFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.foo()
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

def self.inheritence_A; InheritenceA; end
class InheritenceA < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.inheritence_md.inheritence_A.new() }



    def initialize()
        
        super("inheritence.A")
        (self).name = "inheritence.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.inheritence_md.inheritence_A_foo_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritence.A.new()

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
InheritenceA.unlazy_statics


def self.inheritence_B_foo_Method; InheritenceBFooMethod; end
class InheritenceBFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.foo()
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

def self.inheritence_B; InheritenceB; end
class InheritenceB < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.inheritence_md.inheritence_B.new() }



    def initialize()
        
        super("inheritence.B")
        (self).name = "inheritence.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.inheritence_md.inheritence_B_foo_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritence.B.new()

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
InheritenceB.unlazy_statics


def self.inheritence_C_foo_Method; InheritenceCFooMethod; end
class InheritenceCFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.foo()
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

def self.inheritence_C; InheritenceC; end
class InheritenceC < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.inheritence_md.inheritence_C.new() }



    def initialize()
        
        super("inheritence.C")
        (self).name = "inheritence.C"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.inheritence_md.inheritence_C_foo_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritence.C.new()

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
InheritenceC.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.inheritence_md.quark_List_quark_String_.new() }



    def initialize()
        
        super("quark.List<quark.String>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

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
QuarkListQuarkString.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static inheritence_A_md: -> { ::Quark.inheritence_md.inheritence_A.singleton }
    static inheritence_B_md: -> { ::Quark.inheritence_md.inheritence_B.singleton }
    static inheritence_C_md: -> { ::Quark.inheritence_md.inheritence_C.singleton }



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
end # module InheritenceMd
end # module Quark
