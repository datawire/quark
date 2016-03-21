module Quark
require "datawire-quark-core"
def self.package_md; MODULE_package_md; end
module MODULE_package_md
require 'builtin' # .../reflect
require 'test'
require 'test/test'

class CLASS_test_Test_go_Method < ::Quark.builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "go", DatawireQuarkCore::List.new([]))

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


end; def self.test_Test_go_Method; CLASS_test_Test_go_Method; end

class CLASS_test_Test < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("test.Test")
        (self).name = "test.Test"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "name")])
        (self).methods = DatawireQuarkCore::List.new([::Quark.package_md.test_Test_go_Method.new()])

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


end; def self.test_Test; CLASS_test_Test; end

class CLASS_test_test_Test_go_Method < ::Quark.builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "go", DatawireQuarkCore::List.new([]))

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


end; def self.test_test_Test_go_Method; CLASS_test_test_Test_go_Method; end

class CLASS_test_test_Test < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("test.test.Test")
        (self).name = "test.test.Test"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.int", "size")])
        (self).methods = DatawireQuarkCore::List.new([::Quark.package_md.test_test_Test_go_Method.new()])

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


end; def self.test_test_Test; CLASS_test_test_Test; end

class CLASS_Root < Object
    attr_accessor 

    
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


end; def self.Root; CLASS_Root; end
end # module MODULE_package_md
end # module Quark
