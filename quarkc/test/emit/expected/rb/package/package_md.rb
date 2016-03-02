require "datawire-quark-core"
require "../builtin"
require "../test"
require "../test"


class Test_Test_go_Method < builtin.reflect.Method
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


end
def test_Test_go_Method()
    return Test_Test_go_Method

    nil
end

class Test_Test < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("test.Test")
        (self).name = "test.Test"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "name")])
        (self).methods = DatawireQuarkCore::List.new([test_Test_go_Method.new()])

        nil
    end



    
    def construct(args)
        
        return test.Test.new()

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
def test_Test()
    return Test_Test

    nil
end


class Test_test_Test_go_Method < builtin.reflect.Method
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


end
def test_test_Test_go_Method()
    return Test_test_Test_go_Method

    nil
end

class Test_test_Test < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("test.test.Test")
        (self).name = "test.test.Test"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.int", "size")])
        (self).methods = DatawireQuarkCore::List.new([test_test_Test_go_Method.new()])

        nil
    end



    
    def construct(args)
        
        return test.test.Test.new()

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
def test_test_Test()
    return Test_test_Test

    nil
end


class Root < Object
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


end
