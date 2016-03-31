module Quark
def self.package_md; PackageMd; end
module PackageMd
require 'quark' # .../reflect
# for ('package_md',): require_relative 'test' # 0 () ()
# for ('package_md',): require_relative 'test/test' # 0 ('test',) ()

def self.test_Test_go_Method; TestTestGoMethod; end
class TestTestGoMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "go", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.go()
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

def self.test_Test; TestTest; end
class TestTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.package_md.test_Test.new() }



    def initialize()
        
        super("test.Test")
        (self).name = "test.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.package_md.test_Test_go_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.test.Test.new()

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
TestTest.unlazy_statics

def self.test_test_Test_go_Method; TestTestTestGoMethod; end
class TestTestTestGoMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "go", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.go()
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

def self.test_test_Test; TestTestTest; end
class TestTestTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.package_md.test_test_Test.new() }



    def initialize()
        
        super("test.test.Test")
        (self).name = "test.test.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "size")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.package_md.test_test_Test_go_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.test.test.Test.new()

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
TestTestTest.unlazy_statics

def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static test_Test_md: -> { ::Quark.package_md.test_Test.singleton }
    static test_test_Test_md: -> { ::Quark.package_md.test_test_Test.singleton }



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
end # module PackageMd
end # module Quark
