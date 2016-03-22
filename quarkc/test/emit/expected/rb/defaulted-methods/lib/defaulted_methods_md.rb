module Quark
require "datawire-quark-core"
def self.defaulted_methods_md; MODULE_defaulted_methods_md; end
module MODULE_defaulted_methods_md
require 'builtin' # .../reflect
require 'pkg'

def self.pkg_A_foo_Method; CLASS_pkg_A_foo_Method; end
class CLASS_pkg_A_foo_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_A_bar_Method; CLASS_pkg_A_bar_Method; end
class CLASS_pkg_A_bar_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_A; CLASS_pkg_A; end
class CLASS_pkg_A < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.defaulted_methods_md.pkg_A.new() }


    
    def initialize()
        
        super("pkg.A")
        (self).name = "pkg.A"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_A_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_A_bar_Method.new()])

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

def self.pkg_B_bar_Method; CLASS_pkg_B_bar_Method; end
class CLASS_pkg_B_bar_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_B; CLASS_pkg_B; end
class CLASS_pkg_B < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.defaulted_methods_md.pkg_B.new() }


    
    def initialize()
        
        super("pkg.B")
        (self).name = "pkg.B"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_B_bar_Method.new()])

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

def self.pkg_C_foo_Method; CLASS_pkg_C_foo_Method; end
class CLASS_pkg_C_foo_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_C; CLASS_pkg_C; end
class CLASS_pkg_C < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.defaulted_methods_md.pkg_C.new() }


    
    def initialize()
        
        super("pkg.C")
        (self).name = "pkg.C"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_C_foo_Method.new()])

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

def self.pkg_T1_foo_Method; CLASS_pkg_T1_foo_Method; end
class CLASS_pkg_T1_foo_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T1_bar_Method; CLASS_pkg_T1_bar_Method; end
class CLASS_pkg_T1_bar_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T1; CLASS_pkg_T1; end
class CLASS_pkg_T1 < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T1.new() }


    
    def initialize()
        
        super("pkg.T1")
        (self).name = "pkg.T1"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T1_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T1_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return ::Quark.pkg.T1.new()

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

def self.pkg_T2_foo_Method; CLASS_pkg_T2_foo_Method; end
class CLASS_pkg_T2_foo_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T2_bar_Method; CLASS_pkg_T2_bar_Method; end
class CLASS_pkg_T2_bar_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T2; CLASS_pkg_T2; end
class CLASS_pkg_T2 < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T2.new() }


    
    def initialize()
        
        super("pkg.T2")
        (self).name = "pkg.T2"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T2_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T2_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return ::Quark.pkg.T2.new()

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

def self.pkg_T3_foo_Method; CLASS_pkg_T3_foo_Method; end
class CLASS_pkg_T3_foo_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T3_bar_Method; CLASS_pkg_T3_bar_Method; end
class CLASS_pkg_T3_bar_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T3; CLASS_pkg_T3; end
class CLASS_pkg_T3 < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T3.new() }


    
    def initialize()
        
        super("pkg.T3")
        (self).name = "pkg.T3"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T3_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T3_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return ::Quark.pkg.T3.new()

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

def self.pkg_T4_foo_Method; CLASS_pkg_T4_foo_Method; end
class CLASS_pkg_T4_foo_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T4_bar_Method; CLASS_pkg_T4_bar_Method; end
class CLASS_pkg_T4_bar_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T4; CLASS_pkg_T4; end
class CLASS_pkg_T4 < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T4.new() }


    
    def initialize()
        
        super("pkg.T4")
        (self).name = "pkg.T4"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T4_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T4_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return ::Quark.pkg.T4.new()

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

def self.pkg_T5_foo_Method; CLASS_pkg_T5_foo_Method; end
class CLASS_pkg_T5_foo_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T5_bar_Method; CLASS_pkg_T5_bar_Method; end
class CLASS_pkg_T5_bar_Method < ::Quark.builtin.reflect.Method
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

def self.pkg_T5; CLASS_pkg_T5; end
class CLASS_pkg_T5 < ::Quark.builtin.reflect.QuarkClass
    attr_accessor 
    extend DatawireQuarkCore::Static


    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T5.new() }


    
    def initialize()
        
        super("pkg.T5")
        (self).name = "pkg.T5"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T5_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T5_bar_Method.new()])

        nil
    end



    
    def construct(args)
        
        return ::Quark.pkg.T5.new()

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

def self.Root; CLASS_Root; end
class CLASS_Root < Object
    attr_accessor 
    extend DatawireQuarkCore::Static


    static pkg_A_md: -> { ::Quark.defaulted_methods_md.pkg_A.singleton }
    static pkg_B_md: -> { ::Quark.defaulted_methods_md.pkg_B.singleton }
    static pkg_C_md: -> { ::Quark.defaulted_methods_md.pkg_C.singleton }
    static pkg_T1_md: -> { ::Quark.defaulted_methods_md.pkg_T1.singleton }
    static pkg_T2_md: -> { ::Quark.defaulted_methods_md.pkg_T2.singleton }
    static pkg_T3_md: -> { ::Quark.defaulted_methods_md.pkg_T3.singleton }
    static pkg_T4_md: -> { ::Quark.defaulted_methods_md.pkg_T4.singleton }
    static pkg_T5_md: -> { ::Quark.defaulted_methods_md.pkg_T5.singleton }


    
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
end # module MODULE_defaulted_methods_md
end # module Quark
