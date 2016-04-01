module Quark
def self.defaulted_methods_md; DefaultedMethodsMd; end
module DefaultedMethodsMd
require 'quark' # .../reflect
# for ('defaulted_methods_md',): require_relative 'pkg' # 0 () ()

def self.pkg_A_foo_Method; PkgAFooMethod; end
class PkgAFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_A_bar_Method; PkgABarMethod; end
class PkgABarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_A; PkgA; end
class PkgA < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.defaulted_methods_md.pkg_A.new() }



    def initialize()
        
        super("pkg.A")
        (self).name = "pkg.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_A_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_A_bar_Method.new()])

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
PkgA.unlazy_statics

def self.pkg_B_bar_Method; PkgBBarMethod; end
class PkgBBarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_B; PkgB; end
class PkgB < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.defaulted_methods_md.pkg_B.new() }



    def initialize()
        
        super("pkg.B")
        (self).name = "pkg.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_B_bar_Method.new()])

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
PkgB.unlazy_statics

def self.pkg_C_foo_Method; PkgCFooMethod; end
class PkgCFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_C; PkgC; end
class PkgC < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.defaulted_methods_md.pkg_C.new() }



    def initialize()
        
        super("pkg.C")
        (self).name = "pkg.C"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_C_foo_Method.new()])

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
PkgC.unlazy_statics

def self.pkg_T1_foo_Method; PkgT1FooMethod; end
class PkgT1FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T1_bar_Method; PkgT1BarMethod; end
class PkgT1BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T1; PkgT1; end
class PkgT1 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T1.new() }



    def initialize()
        
        super("pkg.T1")
        (self).name = "pkg.T1"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T1_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T1_bar_Method.new()])

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
PkgT1.unlazy_statics

def self.pkg_T2_foo_Method; PkgT2FooMethod; end
class PkgT2FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T2_bar_Method; PkgT2BarMethod; end
class PkgT2BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T2; PkgT2; end
class PkgT2 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T2.new() }



    def initialize()
        
        super("pkg.T2")
        (self).name = "pkg.T2"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T2_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T2_bar_Method.new()])

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
PkgT2.unlazy_statics

def self.pkg_T3_foo_Method; PkgT3FooMethod; end
class PkgT3FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T3_bar_Method; PkgT3BarMethod; end
class PkgT3BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T3; PkgT3; end
class PkgT3 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T3.new() }



    def initialize()
        
        super("pkg.T3")
        (self).name = "pkg.T3"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T3_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T3_bar_Method.new()])

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
PkgT3.unlazy_statics

def self.pkg_T4_foo_Method; PkgT4FooMethod; end
class PkgT4FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T4_bar_Method; PkgT4BarMethod; end
class PkgT4BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T4; PkgT4; end
class PkgT4 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T4.new() }



    def initialize()
        
        super("pkg.T4")
        (self).name = "pkg.T4"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T4_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T4_bar_Method.new()])

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
PkgT4.unlazy_statics

def self.pkg_T5_foo_Method; PkgT5FooMethod; end
class PkgT5FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T5_bar_Method; PkgT5BarMethod; end
class PkgT5BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_T5; PkgT5; end
class PkgT5 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.defaulted_methods_md.pkg_T5.new() }



    def initialize()
        
        super("pkg.T5")
        (self).name = "pkg.T5"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.defaulted_methods_md.pkg_T5_foo_Method.new(), ::Quark.defaulted_methods_md.pkg_T5_bar_Method.new()])

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
PkgT5.unlazy_statics

def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.defaulted_methods_md.quark_List_quark_String_.new() }



    def initialize()
        
        super("quark.List<quark.String>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

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
QuarkListQuarkString.unlazy_statics

def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

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
Root.unlazy_statics
end # module DefaultedMethodsMd
end # module Quark
