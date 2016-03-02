require "datawire-quark-core"
require "../builtin"
require "../pkg"


class Pkg_A_foo_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "foo", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.foo()
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
def pkg_A_foo_Method()
    return Pkg_A_foo_Method

    nil
end

class Pkg_A_bar_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "bar", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.bar()
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
def pkg_A_bar_Method()
    return Pkg_A_bar_Method

    nil
end

class Pkg_A < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.A")
        (self).name = "pkg.A"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_A_foo_Method.new(), pkg_A_bar_Method.new()])

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
def pkg_A()
    return Pkg_A

    nil
end


class Pkg_B_bar_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "bar", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.bar()
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
def pkg_B_bar_Method()
    return Pkg_B_bar_Method

    nil
end

class Pkg_B < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.B")
        (self).name = "pkg.B"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_B_bar_Method.new()])

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
def pkg_B()
    return Pkg_B

    nil
end


class Pkg_C_foo_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "foo", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.foo()
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
def pkg_C_foo_Method()
    return Pkg_C_foo_Method

    nil
end

class Pkg_C < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.C")
        (self).name = "pkg.C"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_C_foo_Method.new()])

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
def pkg_C()
    return Pkg_C

    nil
end


class Pkg_T1_foo_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "foo", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.foo()
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
def pkg_T1_foo_Method()
    return Pkg_T1_foo_Method

    nil
end

class Pkg_T1_bar_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "bar", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.bar()
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
def pkg_T1_bar_Method()
    return Pkg_T1_bar_Method

    nil
end

class Pkg_T1 < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.T1")
        (self).name = "pkg.T1"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_T1_foo_Method.new(), pkg_T1_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pkg.T1.new()

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
def pkg_T1()
    return Pkg_T1

    nil
end


class Pkg_T2_foo_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "foo", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.foo()
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
def pkg_T2_foo_Method()
    return Pkg_T2_foo_Method

    nil
end

class Pkg_T2_bar_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "bar", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.bar()
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
def pkg_T2_bar_Method()
    return Pkg_T2_bar_Method

    nil
end

class Pkg_T2 < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.T2")
        (self).name = "pkg.T2"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_T2_foo_Method.new(), pkg_T2_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pkg.T2.new()

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
def pkg_T2()
    return Pkg_T2

    nil
end


class Pkg_T3_foo_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "foo", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.foo()
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
def pkg_T3_foo_Method()
    return Pkg_T3_foo_Method

    nil
end

class Pkg_T3_bar_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "bar", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.bar()
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
def pkg_T3_bar_Method()
    return Pkg_T3_bar_Method

    nil
end

class Pkg_T3 < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.T3")
        (self).name = "pkg.T3"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_T3_foo_Method.new(), pkg_T3_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pkg.T3.new()

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
def pkg_T3()
    return Pkg_T3

    nil
end


class Pkg_T4_foo_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "foo", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.foo()
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
def pkg_T4_foo_Method()
    return Pkg_T4_foo_Method

    nil
end

class Pkg_T4_bar_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "bar", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.bar()
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
def pkg_T4_bar_Method()
    return Pkg_T4_bar_Method

    nil
end

class Pkg_T4 < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.T4")
        (self).name = "pkg.T4"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_T4_foo_Method.new(), pkg_T4_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pkg.T4.new()

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
def pkg_T4()
    return Pkg_T4

    nil
end


class Pkg_T5_foo_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "foo", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.foo()
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
def pkg_T5_foo_Method()
    return Pkg_T5_foo_Method

    nil
end

class Pkg_T5_bar_Method < builtin.reflect.Method
    attr_accessor 

    
    def initialize()
        
        super("builtin.void", "bar", DatawireQuarkCore::List.new([]))

        nil
    end



    
    def invoke(object, args)
        
        obj = object
        obj.bar()
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
def pkg_T5_bar_Method()
    return Pkg_T5_bar_Method

    nil
end

class Pkg_T5 < builtin.reflect.QuarkClass
    attr_accessor 

    
    def initialize()
        
        super("pkg.T5")
        (self).name = "pkg.T5"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([pkg_T5_foo_Method.new(), pkg_T5_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return pkg.T5.new()

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
def pkg_T5()
    return Pkg_T5

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
