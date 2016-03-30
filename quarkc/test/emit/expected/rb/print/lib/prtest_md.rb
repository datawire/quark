module Quark
def self.prtest_md; MODULE_prtest_md; end
module MODULE_prtest_md
require 'quark' # .../reflect
# for ('prtest_md',): require_relative 'prtest' # 0 () ()

def self.prtest_Test_test_Method; CLASS_prtest_Test_test_Method; end
class CLASS_prtest_Test_test_Method < ::Quark.quark.reflect.Method



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

def self.prtest_Test; CLASS_prtest_Test; end
class CLASS_prtest_Test < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.prtest_md.prtest_Test.new() }



    def initialize()
        
        super("prtest.Test")
        (self).name = "prtest.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.prtest_md.prtest_Test_test_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.prtest.Test.new()

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
CLASS_prtest_Test.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static prtest_Test_md: -> { ::Quark.prtest_md.prtest_Test.singleton }



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
end # module MODULE_prtest_md
end # module Quark
