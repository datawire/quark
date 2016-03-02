require "datawire-quark-core"
require "../builtin"
require "../test1"
require "../test2"
require "../test3"


class Test1_Test < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("test1.Test")
        (self).name = "test1.Test"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "name")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end



    
    def construct(args)
        
        return test1.Test.new()

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
def test1_Test()
    return Test1_Test

    nil
end


class Test2_Test < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("test2.Test")
        (self).name = "test2.Test"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "name")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end



    
    def construct(args)
        
        return test2.Test.new((args)[0])

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
def test2_Test()
    return Test2_Test

    nil
end


class Test3_Box_builtin_String__get_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.String", "get", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        return obj.get()

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
def test3_Box_builtin_String__get_Method()
    return Test3_Box_builtin_String__get_Method

    nil
end

class Test3_Box_builtin_String_ < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("test3.Box<builtin.String>")
        (self).name = "test3.Box"
        (self).parameters = DatawireQuarkCore::List.new(["builtin.String"])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "contents")])
        (self).methods = DatawireQuarkCore::List.new([test3_Box_builtin_String__get_Method.new()])

        nil
    end



    
    def construct(args)
        
        return test3.Box.new((args)[0])

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
def test3_Box_builtin_String_()
    return Test3_Box_builtin_String_

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
