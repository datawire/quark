module Quark
def self.static_md; MODULE_static_md; end
module MODULE_static_md
require 'quark' # .../reflect
# for ('static_md',): require_relative 'static' # 0 () ()

def self.static_Foo_setCount_Method; CLASS_static_Foo_setCount_Method; end
class CLASS_static_Foo_setCount_Method < ::Quark.quark.reflect.Method



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
        

        nil
    end


end

def self.static_Foo_getCount_Method; CLASS_static_Foo_getCount_Method; end
class CLASS_static_Foo_getCount_Method < ::Quark.quark.reflect.Method



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
        

        nil
    end


end

def self.static_Foo_test1_Method; CLASS_static_Foo_test1_Method; end
class CLASS_static_Foo_test1_Method < ::Quark.quark.reflect.Method



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
        

        nil
    end


end

def self.static_Foo_test2_Method; CLASS_static_Foo_test2_Method; end
class CLASS_static_Foo_test2_Method < ::Quark.quark.reflect.Method



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
        

        nil
    end


end

def self.static_Foo_test3_Method; CLASS_static_Foo_test3_Method; end
class CLASS_static_Foo_test3_Method < ::Quark.quark.reflect.Method



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
        

        nil
    end


end

def self.static_Foo_test4_Method; CLASS_static_Foo_test4_Method; end
class CLASS_static_Foo_test4_Method < ::Quark.quark.reflect.Method



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
        

        nil
    end


end

def self.static_Foo; CLASS_static_Foo; end
class CLASS_static_Foo < ::Quark.quark.reflect.QuarkClass
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
        

        nil
    end


end
CLASS_static_Foo.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
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
CLASS_Root.unlazy_statics
end # module MODULE_static_md
end # module Quark
