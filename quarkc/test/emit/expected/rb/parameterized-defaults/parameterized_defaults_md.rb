require "datawire-quark-core"
require "../builtin"
require "../pkg"


class Pkg_Foo_builtin_Object__foo_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.Object", "foo", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        return obj.foo()

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
def pkg_Foo_builtin_Object__foo_Method()
    return Pkg_Foo_builtin_Object__foo_Method

    nil
end

class Pkg_Foo_builtin_Object__get_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.Object", "get", DatawireQuarkCore::List.new([]))

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
def pkg_Foo_builtin_Object__get_Method()
    return Pkg_Foo_builtin_Object__get_Method

    nil
end

class Pkg_Foo_builtin_Object_ < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.Foo<builtin.Object>")
        (self).name = "pkg.Foo"
        (self).parameters = DatawireQuarkCore::List.new(["builtin.Object"])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_Foo_builtin_Object__foo_Method.new(), pkg_Foo_builtin_Object__get_Method.new()])

        nil
    end



    
    def construct(args)
        
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
def pkg_Foo_builtin_Object_()
    return Pkg_Foo_builtin_Object_

    nil
end


class Pkg_StringFoo_get_Method < builtin.reflect.Method
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
def pkg_StringFoo_get_Method()
    return Pkg_StringFoo_get_Method

    nil
end

class Pkg_StringFoo_foo_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.String", "foo", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        return obj.foo()

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
def pkg_StringFoo_foo_Method()
    return Pkg_StringFoo_foo_Method

    nil
end

class Pkg_StringFoo < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.StringFoo")
        (self).name = "pkg.StringFoo"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_StringFoo_get_Method.new(), pkg_StringFoo_foo_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pkg.StringFoo.new()

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
def pkg_StringFoo()
    return Pkg_StringFoo

    nil
end


class Pkg_Box_builtin_String_ < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.Box<builtin.String>")
        (self).name = "pkg.Box"
        (self).parameters = DatawireQuarkCore::List.new(["builtin.String"])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "contents")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end



    
    def construct(args)
        
        return pkg.Box.new((args)[0])

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
def pkg_Box_builtin_String_()
    return Pkg_Box_builtin_String_

    nil
end


class Pkg_StringBox < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.StringBox")
        (self).name = "pkg.StringBox"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([builtin.reflect.Field.new("builtin.String", "contents")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end



    
    def construct(args)
        
        return pkg.StringBox.new((args)[0])

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
def pkg_StringBox()
    return Pkg_StringBox

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
