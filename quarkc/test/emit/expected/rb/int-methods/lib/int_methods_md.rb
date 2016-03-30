module Quark
def self.int_methods_md; MODULE_int_methods_md; end
module MODULE_int_methods_md
require 'quark' # .../reflect
# for ('int_methods_md',): require_relative 'int_methods' # 0 () ()

def self.int_methods_Test_test_Method; CLASS_int_methods_Test_test_Method; end
class CLASS_int_methods_Test_test_Method < ::Quark.quark.reflect.Method



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

def self.int_methods_Test; CLASS_int_methods_Test; end
class CLASS_int_methods_Test < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.int_methods_md.int_methods_Test.new() }



    def initialize()
        
        super("int_methods.Test")
        (self).name = "int_methods.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.int_methods_md.int_methods_Test_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.int_methods.Test.new()

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
CLASS_int_methods_Test.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static int_methods_Test_md: -> { ::Quark.int_methods_md.int_methods_Test.singleton }



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
end # module MODULE_int_methods_md
end # module Quark
