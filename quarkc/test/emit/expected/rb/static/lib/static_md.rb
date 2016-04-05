module Quark
def self.static_md; StaticMd; end
module StaticMd
require 'quark' # .../reflect
# for ('static_md',): require_relative 'static' # 0 () ()


def self.static_Foo_setCount_Method; StaticFooSetCountMethod; end
class StaticFooSetCountMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "setCount", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        ::Quark.static.Foo.setCount((args)[0])
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
        
        super

        nil
    end


end

def self.static_Foo_getCount_Method; StaticFooGetCountMethod; end
class StaticFooGetCountMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.int", "getCount", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return ::Quark.static.Foo.getCount()

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
        
        super

        nil
    end


end

def self.static_Foo_test1_Method; StaticFooTest1Method; end
class StaticFooTest1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.test1()
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
        
        super

        nil
    end


end

def self.static_Foo_test2_Method; StaticFooTest2Method; end
class StaticFooTest2Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test2", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.test2()
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
        
        super

        nil
    end


end

def self.static_Foo_test3_Method; StaticFooTest3Method; end
class StaticFooTest3Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test3", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.test3()
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
        
        super

        nil
    end


end

def self.static_Foo_test4_Method; StaticFooTest4Method; end
class StaticFooTest4Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test4", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.test4()
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
        
        super

        nil
    end


end

def self.static_Foo; StaticFoo; end
class StaticFoo < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.static_md.static_Foo.new() }



    def initialize()
        
        super("static.Foo")
        (self).name = "static.Foo"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "count")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.static_md.static_Foo_setCount_Method.new(), ::Quark.static_md.static_Foo_getCount_Method.new(), ::Quark.static_md.static_Foo_test1_Method.new(), ::Quark.static_md.static_Foo_test2_Method.new(), ::Quark.static_md.static_Foo_test3_Method.new(), ::Quark.static_md.static_Foo_test4_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.static.Foo.new()

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
        
        super

        nil
    end


end
StaticFoo.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.static_md.quark_List_quark_String_.new() }



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
        
        super

        nil
    end


end
QuarkListQuarkString.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static static_Foo_md: -> { ::Quark.static_md.static_Foo.singleton }



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
end # module StaticMd
end # module Quark
