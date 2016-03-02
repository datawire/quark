require "datawire-quark-core"
require "../builtin"
require "../pkg"


class Pkg_Bar_go_Method < builtin.reflect.Method
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
def pkg_Bar_go_Method()
    return Pkg_Bar_go_Method

    nil
end

class Pkg_Bar < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.Bar")
        (self).name = "pkg.Bar"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_Bar_go_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pkg.Bar.new()

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
def pkg_Bar()
    return Pkg_Bar

    nil
end


class Pkg_Foo < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.Foo")
        (self).name = "pkg.Foo"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "name")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end



    
    def construct(args)
        
        return pkg.Foo.new()

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
def pkg_Foo()
    return Pkg_Foo

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
