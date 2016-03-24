module Quark
def self.implicit_self_md; MODULE_implicit_self_md; end
module MODULE_implicit_self_md
require 'quark' # .../reflect
# for ('implicit_self_md',): require_relative 'implicit_self' # 0 () ()

def self.implicit_self_Foo_next_Method; CLASS_implicit_self_Foo_next_Method; end
class CLASS_implicit_self_Foo_next_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "next", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.next_()
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

def self.implicit_self_Foo_test_Method; CLASS_implicit_self_Foo_test_Method; end
class CLASS_implicit_self_Foo_test_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.test()
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

def self.implicit_self_Foo; CLASS_implicit_self_Foo; end
class CLASS_implicit_self_Foo < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.implicit_self_md.implicit_self_Foo.new() }



    def initialize()
        
        super("implicit_self.Foo")
        (self).name = "implicit_self.Foo"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.implicit_self_md.implicit_self_Foo_next_Method.new(), ::Quark.implicit_self_md.implicit_self_Foo_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.implicit_self.Foo.new()

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
CLASS_implicit_self_Foo.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static implicit_self_Foo_md: -> { ::Quark.implicit_self_md.implicit_self_Foo.singleton }



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
end # module MODULE_implicit_self_md
end # module Quark
