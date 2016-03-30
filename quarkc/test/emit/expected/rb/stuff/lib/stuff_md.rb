module Quark
def self.stuff_md; MODULE_stuff_md; end
module MODULE_stuff_md
require 'quark' # .../reflect
# for ('stuff_md',): require_relative 'stuff' # 0 () ()

def self.stuff_Test_foo_Method; CLASS_stuff_Test_foo_Method; end
class CLASS_stuff_Test_foo_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("stuff.Test", "foo", ::DatawireQuarkCore::List.new(["stuff.Test"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.foo((args)[0])

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

def self.stuff_Test_test_Method; CLASS_stuff_Test_test_Method; end
class CLASS_stuff_Test_test_Method < ::Quark.quark.reflect.Method



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

def self.stuff_Test; CLASS_stuff_Test; end
class CLASS_stuff_Test < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.stuff_md.stuff_Test.new() }



    def initialize()
        
        super("stuff.Test")
        (self).name = "stuff.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.stuff_md.stuff_Test_foo_Method.new(), ::Quark.stuff_md.stuff_Test_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.stuff.Test.new()

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
CLASS_stuff_Test.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static stuff_Test_md: -> { ::Quark.stuff_md.stuff_Test.singleton }



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
end # module MODULE_stuff_md
end # module Quark
