module Quark
def self.quark_ffi_signatures_md; QuarkFfiSignaturesMd; end
module QuarkFfiSignaturesMd
require 'quark' # .../reflect
# for ('quark_ffi_signatures_md',): require_relative 'generics' # 0 () ()
# for ('quark_ffi_signatures_md',): require_relative 'generics/constructors' # 0 ('generics',) ()
# for ('quark_ffi_signatures_md',): require_relative 'generics/pkg' # 0 ('generics',) ()
# for ('quark_ffi_signatures_md',): require_relative 'generics/ccc' # 0 ('generics',) ()
# for ('quark_ffi_signatures_md',): require_relative 'inheritance' # 0 () ()
# for ('quark_ffi_signatures_md',): require_relative 'inheritance/t1' # 0 ('inheritance',) ()
# for ('quark_ffi_signatures_md',): require_relative 'inheritance/t2' # 0 ('inheritance',) ()
# for ('quark_ffi_signatures_md',): require_relative 'inheritance/pets' # 0 ('inheritance',) ()
# for ('quark_ffi_signatures_md',): require_relative 'inheritance/super_' # 0 ('inheritance',) ()
# for ('quark_ffi_signatures_md',): require_relative 'inheritance/use_before_def' # 0 ('inheritance',) ()
# for ('quark_ffi_signatures_md',): require_relative 'interfaces' # 0 () ()
# for ('quark_ffi_signatures_md',): require_relative 'classes' # 0 () ()
# for ('quark_ffi_signatures_md',): require_relative 'classes/stuff' # 0 ('classes',) ()
# for ('quark_ffi_signatures_md',): require_relative 'statics' # 0 () ()
# for ('quark_ffi_signatures_md',): require_relative 'docs' # 0 () ()


def self.generics_Box_quark_Object__set_Method; GenericsBoxQuarkObjectSetMethod; end
class GenericsBoxQuarkObjectSetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "set", ::DatawireQuarkCore::List.new(["quark.Object"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.Box }
        obj.set((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_Box_quark_Object__get_Method; GenericsBoxQuarkObjectGetMethod; end
class GenericsBoxQuarkObjectGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Object", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.Box }
        return obj.get()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_Box_quark_Object_; GenericsBoxQuarkObject; end
class GenericsBoxQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_Box_quark_Object_.new() }



    def initialize()
        
        super("generics.Box<quark.Object>")
        (self).name = "generics.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Object", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_Box_quark_Object__set_Method.new(), ::Quark.quark_ffi_signatures_md.generics_Box_quark_Object__get_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.Box.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsBoxQuarkObject.unlazy_statics


def self.generics_Box_quark_int__set_Method; GenericsBoxQuarkIntSetMethod; end
class GenericsBoxQuarkIntSetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "set", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.Box }
        obj.set(::DatawireQuarkCore.cast((args)[0]) { ::Integer })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_Box_quark_int__get_Method; GenericsBoxQuarkIntGetMethod; end
class GenericsBoxQuarkIntGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.int", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.Box }
        return obj.get()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_Box_quark_int_; GenericsBoxQuarkInt; end
class GenericsBoxQuarkInt < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_Box_quark_int_.new() }



    def initialize()
        
        super("generics.Box<quark.int>")
        (self).name = "generics.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.int"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_Box_quark_int__set_Method.new(), ::Quark.quark_ffi_signatures_md.generics_Box_quark_int__get_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.Box.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsBoxQuarkInt.unlazy_statics


def self.generics_Crate_quark_Object__set_Method; GenericsCrateQuarkObjectSetMethod; end
class GenericsCrateQuarkObjectSetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "set", ::DatawireQuarkCore::List.new(["quark.Object"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.Crate }
        obj.set((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_Crate_quark_Object__get_Method; GenericsCrateQuarkObjectGetMethod; end
class GenericsCrateQuarkObjectGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Object", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.Crate }
        return obj.get()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_Crate_quark_Object_; GenericsCrateQuarkObject; end
class GenericsCrateQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_Crate_quark_Object_.new() }



    def initialize()
        
        super("generics.Crate<quark.Object>")
        (self).name = "generics.Crate"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("generics.Box<quark.Object>", "box"), ::Quark.quark.reflect.Field.new("generics.Box<quark.int>", "ibox")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_Crate_quark_Object__set_Method.new(), ::Quark.quark_ffi_signatures_md.generics_Crate_quark_Object__get_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.Crate.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsCrateQuarkObject.unlazy_statics


def self.generics_Sack; GenericsSack; end
class GenericsSack < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_Sack.new() }



    def initialize()
        
        super("generics.Sack")
        (self).name = "generics.Sack"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("generics.Box<quark.int>", "ints")])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.Sack.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsSack.unlazy_statics


def self.generics_Matrix_quark_Object____get___Method; GenericsMatrixQuarkObjectGetMethod; end
class GenericsMatrixQuarkObjectGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Object", "__get__", ::DatawireQuarkCore::List.new(["quark.int", "quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.Matrix }
        return obj.__get__(::DatawireQuarkCore.cast((args)[0]) { ::Integer }, ::DatawireQuarkCore.cast((args)[1]) { ::Integer })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_Matrix_quark_Object____set___Method; GenericsMatrixQuarkObjectSetMethod; end
class GenericsMatrixQuarkObjectSetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "__set__", ::DatawireQuarkCore::List.new(["quark.int", "quark.int", "quark.Object"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.Matrix }
        obj.__set__(::DatawireQuarkCore.cast((args)[0]) { ::Integer }, ::DatawireQuarkCore.cast((args)[1]) { ::Integer }, (args)[2])
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_Matrix_quark_Object_; GenericsMatrixQuarkObject; end
class GenericsMatrixQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_Matrix_quark_Object_.new() }



    def initialize()
        
        super("generics.Matrix<quark.Object>")
        (self).name = "generics.Matrix"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "width"), ::Quark.quark.reflect.Field.new("quark.int", "height"), ::Quark.quark.reflect.Field.new("quark.List<quark.List<quark.Object>>", "columns")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_Matrix_quark_Object____get___Method.new(), ::Quark.quark_ffi_signatures_md.generics_Matrix_quark_Object____set___Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.Matrix.new(::DatawireQuarkCore.cast((args)[0]) { ::Integer }, ::DatawireQuarkCore.cast((args)[1]) { ::Integer })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsMatrixQuarkObject.unlazy_statics


def self.generics_constructors_Box_quark_Object__get_Method; GenericsConstructorsBoxQuarkObjectGetMethod; end
class GenericsConstructorsBoxQuarkObjectGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Object", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.constructors.Box }
        return obj.get()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_constructors_Box_quark_Object_; GenericsConstructorsBoxQuarkObject; end
class GenericsConstructorsBoxQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_constructors_Box_quark_Object_.new() }



    def initialize()
        
        super("generics.constructors.Box<quark.Object>")
        (self).name = "generics.constructors.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Object", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_constructors_Box_quark_Object__get_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.constructors.Box.new((args)[0])

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsConstructorsBoxQuarkObject.unlazy_statics


def self.generics_pkg_Foo_quark_Object__foo_Method; GenericsPkgFooQuarkObjectFooMethod; end
class GenericsPkgFooQuarkObjectFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Object", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.pkg.Foo }
        return obj.foo()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_pkg_Foo_quark_Object__get_Method; GenericsPkgFooQuarkObjectGetMethod; end
class GenericsPkgFooQuarkObjectGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Object", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.pkg.Foo }
        return obj.get()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_pkg_Foo_quark_Object_; GenericsPkgFooQuarkObject; end
class GenericsPkgFooQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_pkg_Foo_quark_Object_.new() }



    def initialize()
        
        super("generics.pkg.Foo<quark.Object>")
        (self).name = "generics.pkg.Foo"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_pkg_Foo_quark_Object__foo_Method.new(), ::Quark.quark_ffi_signatures_md.generics_pkg_Foo_quark_Object__get_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsPkgFooQuarkObject.unlazy_statics


def self.generics_pkg_StringFoo_get_Method; GenericsPkgStringFooGetMethod; end
class GenericsPkgStringFooGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.pkg.StringFoo }
        return obj.get()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_pkg_StringFoo_foo_Method; GenericsPkgStringFooFooMethod; end
class GenericsPkgStringFooFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.pkg.StringFoo }
        return obj.foo()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_pkg_StringFoo; GenericsPkgStringFoo; end
class GenericsPkgStringFoo < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_pkg_StringFoo.new() }



    def initialize()
        
        super("generics.pkg.StringFoo")
        (self).name = "generics.pkg.StringFoo"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_pkg_StringFoo_get_Method.new(), ::Quark.quark_ffi_signatures_md.generics_pkg_StringFoo_foo_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.pkg.StringFoo.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsPkgStringFoo.unlazy_statics


def self.generics_pkg_Box_quark_String_; GenericsPkgBoxQuarkString; end
class GenericsPkgBoxQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_pkg_Box_quark_String_.new() }



    def initialize()
        
        super("generics.pkg.Box<quark.String>")
        (self).name = "generics.pkg.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.pkg.Box.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsPkgBoxQuarkString.unlazy_statics


def self.generics_pkg_StringBox; GenericsPkgStringBox; end
class GenericsPkgStringBox < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_pkg_StringBox.new() }



    def initialize()
        
        super("generics.pkg.StringBox")
        (self).name = "generics.pkg.StringBox"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("generics.pkg.Box")])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.pkg.StringBox.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsPkgStringBox.unlazy_statics


def self.generics_ccc_TLSContextInitializer_getValue_Method; GenericsCccTLSContextInitializerGetValueMethod; end
class GenericsCccTLSContextInitializerGetValueMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("generics.ccc.Context", "getValue", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.ccc.TLSContextInitializer }
        return obj.getValue()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_ccc_TLSContextInitializer; GenericsCccTLSContextInitializer; end
class GenericsCccTLSContextInitializer < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_ccc_TLSContextInitializer.new() }



    def initialize()
        
        super("generics.ccc.TLSContextInitializer")
        (self).name = "generics.ccc.TLSContextInitializer"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_ccc_TLSContextInitializer_getValue_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.ccc.TLSContextInitializer.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsCccTLSContextInitializer.unlazy_statics


def self.generics_ccc_Context_current_Method; GenericsCccContextCurrentMethod; end
class GenericsCccContextCurrentMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("generics.ccc.Context", "current", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.ccc.Context }
        return ::Quark.generics.ccc.Context.current()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_ccc_Context_global_Method; GenericsCccContextGlobalMethod; end
class GenericsCccContextGlobalMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("generics.ccc.Context", "global", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.ccc.Context }
        return ::Quark.generics.ccc.Context.global()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_ccc_Context; GenericsCccContext; end
class GenericsCccContext < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_ccc_Context.new() }



    def initialize()
        
        super("generics.ccc.Context")
        (self).name = "generics.ccc.Context"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("generics.ccc.Context", "_global"), ::Quark.quark.reflect.Field.new("generics.ccc.TLS<generics.ccc.Context>", "_current"), ::Quark.quark.reflect.Field.new("generics.ccc.Context", "parent")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_ccc_Context_current_Method.new(), ::Quark.quark_ffi_signatures_md.generics_ccc_Context_global_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.ccc.Context.new(::DatawireQuarkCore.cast((args)[0]) { ::Quark.generics.ccc.Context })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsCccContext.unlazy_statics


def self.generics_ccc_TLSInitializer_quark_Object__getValue_Method; GenericsCccTLSInitializerQuarkObjectGetValueMethod; end
class GenericsCccTLSInitializerQuarkObjectGetValueMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Object", "getValue", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.ccc.TLSInitializer }
        return obj.getValue()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_ccc_TLSInitializer_quark_Object_; GenericsCccTLSInitializerQuarkObject; end
class GenericsCccTLSInitializerQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_ccc_TLSInitializer_quark_Object_.new() }



    def initialize()
        
        super("generics.ccc.TLSInitializer<quark.Object>")
        (self).name = "generics.ccc.TLSInitializer"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_ccc_TLSInitializer_quark_Object__getValue_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsCccTLSInitializerQuarkObject.unlazy_statics


def self.generics_ccc_TLS_generics_ccc_Context__getValue_Method; GenericsCccTLSGenericsCccContextGetValueMethod; end
class GenericsCccTLSGenericsCccContextGetValueMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("generics.ccc.Context", "getValue", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.generics.ccc.TLS }
        return obj.getValue()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.generics_ccc_TLS_generics_ccc_Context_; GenericsCccTLSGenericsCccContext; end
class GenericsCccTLSGenericsCccContext < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.generics_ccc_TLS_generics_ccc_Context_.new() }



    def initialize()
        
        super("generics.ccc.TLS<generics.ccc.Context>")
        (self).name = "generics.ccc.TLS"
        (self).parameters = ::DatawireQuarkCore::List.new(["generics.ccc.Context"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("generics.ccc.Context", "_value")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.generics_ccc_TLS_generics_ccc_Context__getValue_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.generics.ccc.TLS.new(::DatawireQuarkCore.cast((args)[0]) { ::Quark.generics.ccc.TLSInitializer })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
GenericsCccTLSGenericsCccContext.unlazy_statics


def self.inheritance_Base; InheritanceBase; end
class InheritanceBase < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_Base.new() }



    def initialize()
        
        super("inheritance.Base")
        (self).name = "inheritance.Base"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.Base.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceBase.unlazy_statics


def self.inheritance_Test; InheritanceTest; end
class InheritanceTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_Test.new() }



    def initialize()
        
        super("inheritance.Test")
        (self).name = "inheritance.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name"), ::Quark.quark.reflect.Field.new("quark.String", "mumble"), ::Quark.quark.reflect.Field.new("quark.String", "later")])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.Base")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.Test.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceTest.unlazy_statics


def self.inheritance_A; InheritanceA; end
class InheritanceA < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_A.new() }



    def initialize()
        
        super("inheritance.A")
        (self).name = "inheritance.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.A.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceA.unlazy_statics


def self.inheritance_B_greet_Method; InheritanceBGreetMethod; end
class InheritanceBGreetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.B }
        obj.greet()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_B; InheritanceB; end
class InheritanceB < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_B.new() }



    def initialize()
        
        super("inheritance.B")
        (self).name = "inheritance.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_B_greet_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.A")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.B.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceB.unlazy_statics


def self.inheritance_C_greet_Method; InheritanceCGreetMethod; end
class InheritanceCGreetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.C }
        obj.greet()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_C; InheritanceC; end
class InheritanceC < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_C.new() }



    def initialize()
        
        super("inheritance.C")
        (self).name = "inheritance.C"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_C_greet_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.A")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.C.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceC.unlazy_statics


def self.inheritance_X; InheritanceX; end
class InheritanceX < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_X.new() }



    def initialize()
        
        super("inheritance.X")
        (self).name = "inheritance.X"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.X.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceX.unlazy_statics


def self.inheritance_Y_test_Method; InheritanceYTestMethod; end
class InheritanceYTestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.Y }
        obj.test()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_Y; InheritanceY; end
class InheritanceY < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_Y.new() }



    def initialize()
        
        super("inheritance.Y")
        (self).name = "inheritance.Y"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_Y_test_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.X")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.Y.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceY.unlazy_statics


def self.inheritance_t1_A_foo_Method; InheritanceT1AFooMethod; end
class InheritanceT1AFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.t1.A }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_t1_A; InheritanceT1A; end
class InheritanceT1A < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_t1_A.new() }



    def initialize()
        
        super("inheritance.t1.A")
        (self).name = "inheritance.t1.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_t1_A_foo_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.t1.A.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceT1A.unlazy_statics


def self.inheritance_t1_B_foo_Method; InheritanceT1BFooMethod; end
class InheritanceT1BFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.t1.B }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_t1_B; InheritanceT1B; end
class InheritanceT1B < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_t1_B.new() }



    def initialize()
        
        super("inheritance.t1.B")
        (self).name = "inheritance.t1.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_t1_B_foo_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.t1.A")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.t1.B.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceT1B.unlazy_statics


def self.inheritance_t1_C_foo_Method; InheritanceT1CFooMethod; end
class InheritanceT1CFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.t1.C }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_t1_C; InheritanceT1C; end
class InheritanceT1C < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_t1_C.new() }



    def initialize()
        
        super("inheritance.t1.C")
        (self).name = "inheritance.t1.C"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_t1_C_foo_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.t1.A")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.t1.C.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceT1C.unlazy_statics


def self.inheritance_t2_A; InheritanceT2A; end
class InheritanceT2A < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_t2_A.new() }



    def initialize()
        
        super("inheritance.t2.A")
        (self).name = "inheritance.t2.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.t2.A.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceT2A.unlazy_statics


def self.inheritance_t2_B; InheritanceT2B; end
class InheritanceT2B < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_t2_B.new() }



    def initialize()
        
        super("inheritance.t2.B")
        (self).name = "inheritance.t2.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.t2.A")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.t2.B.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceT2B.unlazy_statics


def self.inheritance_t2_X_quark_int_; InheritanceT2XQuarkInt; end
class InheritanceT2XQuarkInt < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_t2_X_quark_int_.new() }



    def initialize()
        
        super("inheritance.t2.X<quark.int>")
        (self).name = "inheritance.t2.X"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.int"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.t2.X.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceT2XQuarkInt.unlazy_statics


def self.inheritance_t2_Y; InheritanceT2Y; end
class InheritanceT2Y < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_t2_Y.new() }



    def initialize()
        
        super("inheritance.t2.Y")
        (self).name = "inheritance.t2.Y"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.t2.X")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.t2.Y.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceT2Y.unlazy_statics


def self.inheritance_pets_Cat_greet_Method; InheritancePetsCatGreetMethod; end
class InheritancePetsCatGreetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.pets.Cat }
        obj.greet()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_pets_Cat; InheritancePetsCat; end
class InheritancePetsCat < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_pets_Cat.new() }



    def initialize()
        
        super("inheritance.pets.Cat")
        (self).name = "inheritance.pets.Cat"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_pets_Cat_greet_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.pets.Pet")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.pets.Cat.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritancePetsCat.unlazy_statics


def self.inheritance_pets_Dog_greet_Method; InheritancePetsDogGreetMethod; end
class InheritancePetsDogGreetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.pets.Dog }
        obj.greet()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_pets_Dog; InheritancePetsDog; end
class InheritancePetsDog < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_pets_Dog.new() }



    def initialize()
        
        super("inheritance.pets.Dog")
        (self).name = "inheritance.pets.Dog"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_pets_Dog_greet_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.pets.Pet")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.pets.Dog.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritancePetsDog.unlazy_statics


def self.inheritance_Message_encode_Method; InheritanceMessageEncodeMethod; end
class InheritanceMessageEncodeMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "encode", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.Message }
        return obj.encode()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_Message; InheritanceMessage; end
class InheritanceMessage < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_Message.new() }



    def initialize()
        
        super("inheritance.Message")
        (self).name = "inheritance.Message"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_Message_encode_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.Message.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceMessage.unlazy_statics


def self.inheritance_Ping_encode_Method; InheritancePingEncodeMethod; end
class InheritancePingEncodeMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "encode", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.Ping }
        return obj.encode()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_Ping; InheritancePing; end
class InheritancePing < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_Ping.new() }



    def initialize()
        
        super("inheritance.Ping")
        (self).name = "inheritance.Ping"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_Ping_encode_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.Message")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.Ping.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritancePing.unlazy_statics


def self.inheritance_Pong_toString_Method; InheritancePongToStringMethod; end
class InheritancePongToStringMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "toString", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.Pong }
        return obj.toString()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_Pong_encode_Method; InheritancePongEncodeMethod; end
class InheritancePongEncodeMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "encode", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.Pong }
        return obj.encode()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_Pong; InheritancePong; end
class InheritancePong < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_Pong.new() }



    def initialize()
        
        super("inheritance.Pong")
        (self).name = "inheritance.Pong"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_Pong_toString_Method.new(), ::Quark.quark_ffi_signatures_md.inheritance_Pong_encode_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.Message")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.Pong.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritancePong.unlazy_statics


def self.inheritance_super__A_greet_Method; InheritanceSuperAGreetMethod; end
class InheritanceSuperAGreetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.super_.A }
        obj.greet()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_super__A; InheritanceSuperA; end
class InheritanceSuperA < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_super__A.new() }



    def initialize()
        
        super("inheritance.super_.A")
        (self).name = "inheritance.super_.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_super__A_greet_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.super_.A.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceSuperA.unlazy_statics


def self.inheritance_super__B_greet_Method; InheritanceSuperBGreetMethod; end
class InheritanceSuperBGreetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "greet", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.super_.B }
        obj.greet()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_super__B; InheritanceSuperB; end
class InheritanceSuperB < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_super__B.new() }



    def initialize()
        
        super("inheritance.super_.B")
        (self).name = "inheritance.super_.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_super__B_greet_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("inheritance.super_.A")])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.super_.B.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceSuperB.unlazy_statics


def self.inheritance_use_before_def_Bar_go_Method; InheritanceUseBeforeDefBarGoMethod; end
class InheritanceUseBeforeDefBarGoMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "go", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.inheritance.use_before_def.Bar }
        obj.go()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.inheritance_use_before_def_Bar; InheritanceUseBeforeDefBar; end
class InheritanceUseBeforeDefBar < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_use_before_def_Bar.new() }



    def initialize()
        
        super("inheritance.use_before_def.Bar")
        (self).name = "inheritance.use_before_def.Bar"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.inheritance_use_before_def_Bar_go_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.use_before_def.Bar.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceUseBeforeDefBar.unlazy_statics


def self.inheritance_use_before_def_Foo; InheritanceUseBeforeDefFoo; end
class InheritanceUseBeforeDefFoo < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.inheritance_use_before_def_Foo.new() }



    def initialize()
        
        super("inheritance.use_before_def.Foo")
        (self).name = "inheritance.use_before_def.Foo"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.inheritance.use_before_def.Foo.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InheritanceUseBeforeDefFoo.unlazy_statics


def self.interfaces_A_foo_Method; InterfacesAFooMethod; end
class InterfacesAFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.A }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_A_bar_Method; InterfacesABarMethod; end
class InterfacesABarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.A }
        obj.bar()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_A; InterfacesA; end
class InterfacesA < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_A.new() }



    def initialize()
        
        super("interfaces.A")
        (self).name = "interfaces.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_A_foo_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_A_bar_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesA.unlazy_statics


def self.interfaces_B_bar_Method; InterfacesBBarMethod; end
class InterfacesBBarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.B }
        obj.bar()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_B; InterfacesB; end
class InterfacesB < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_B.new() }



    def initialize()
        
        super("interfaces.B")
        (self).name = "interfaces.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_B_bar_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesB.unlazy_statics


def self.interfaces_C_foo_Method; InterfacesCFooMethod; end
class InterfacesCFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.C }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_C; InterfacesC; end
class InterfacesC < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_C.new() }



    def initialize()
        
        super("interfaces.C")
        (self).name = "interfaces.C"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_C_foo_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesC.unlazy_statics


def self.interfaces_T1_foo_Method; InterfacesT1FooMethod; end
class InterfacesT1FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T1 }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T1_bar_Method; InterfacesT1BarMethod; end
class InterfacesT1BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T1 }
        obj.bar()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T1; InterfacesT1; end
class InterfacesT1 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_T1.new() }



    def initialize()
        
        super("interfaces.T1")
        (self).name = "interfaces.T1"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_T1_foo_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_T1_bar_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.interfaces.T1.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesT1.unlazy_statics


def self.interfaces_T2_foo_Method; InterfacesT2FooMethod; end
class InterfacesT2FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T2 }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T2_bar_Method; InterfacesT2BarMethod; end
class InterfacesT2BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T2 }
        obj.bar()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T2; InterfacesT2; end
class InterfacesT2 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_T2.new() }



    def initialize()
        
        super("interfaces.T2")
        (self).name = "interfaces.T2"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_T2_foo_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_T2_bar_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.interfaces.T2.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesT2.unlazy_statics


def self.interfaces_T3_foo_Method; InterfacesT3FooMethod; end
class InterfacesT3FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T3 }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T3_bar_Method; InterfacesT3BarMethod; end
class InterfacesT3BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T3 }
        obj.bar()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T3; InterfacesT3; end
class InterfacesT3 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_T3.new() }



    def initialize()
        
        super("interfaces.T3")
        (self).name = "interfaces.T3"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_T3_foo_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_T3_bar_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.interfaces.T3.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesT3.unlazy_statics


def self.interfaces_T4_foo_Method; InterfacesT4FooMethod; end
class InterfacesT4FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T4 }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T4_bar_Method; InterfacesT4BarMethod; end
class InterfacesT4BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T4 }
        obj.bar()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T4; InterfacesT4; end
class InterfacesT4 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_T4.new() }



    def initialize()
        
        super("interfaces.T4")
        (self).name = "interfaces.T4"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_T4_foo_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_T4_bar_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.interfaces.T4.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesT4.unlazy_statics


def self.interfaces_T5_foo_Method; InterfacesT5FooMethod; end
class InterfacesT5FooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "foo", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T5 }
        obj.foo()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T5_bar_Method; InterfacesT5BarMethod; end
class InterfacesT5BarMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "bar", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.T5 }
        obj.bar()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_T5; InterfacesT5; end
class InterfacesT5 < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_T5.new() }



    def initialize()
        
        super("interfaces.T5")
        (self).name = "interfaces.T5"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_T5_foo_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_T5_bar_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.interfaces.T5.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesT5.unlazy_statics


def self.interfaces_Foo_m1_Method; InterfacesFooM1Method; end
class InterfacesFooM1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.Foo }
        obj.m1()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_Foo_m2_Method; InterfacesFooM2Method; end
class InterfacesFooM2Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m2", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.Foo }
        obj.m2(::DatawireQuarkCore.cast((args)[0]) { ::Integer })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_Foo_m3_Method; InterfacesFooM3Method; end
class InterfacesFooM3Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m3", ::DatawireQuarkCore::List.new(["quark.List<quark.String>"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.Foo }
        obj.m3(::DatawireQuarkCore.cast((args)[0]) { ::DatawireQuarkCore::List })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_Foo; InterfacesFoo; end
class InterfacesFoo < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_Foo.new() }



    def initialize()
        
        super("interfaces.Foo")
        (self).name = "interfaces.Foo"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_Foo_m1_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_Foo_m2_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_Foo_m3_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesFoo.unlazy_statics


def self.interfaces_Bar_quark_Object__m1_Method; InterfacesBarQuarkObjectM1Method; end
class InterfacesBarQuarkObjectM1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.Bar }
        obj.m1()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_Bar_quark_Object__m2_Method; InterfacesBarQuarkObjectM2Method; end
class InterfacesBarQuarkObjectM2Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m2", ::DatawireQuarkCore::List.new(["quark.Object"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.Bar }
        obj.m2((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_Bar_quark_Object__m3_Method; InterfacesBarQuarkObjectM3Method; end
class InterfacesBarQuarkObjectM3Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m3", ::DatawireQuarkCore::List.new(["quark.List<quark.Object>"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.Bar }
        obj.m3(::DatawireQuarkCore.cast((args)[0]) { ::DatawireQuarkCore::List })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_Bar_quark_Object_; InterfacesBarQuarkObject; end
class InterfacesBarQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_Bar_quark_Object_.new() }



    def initialize()
        
        super("interfaces.Bar<quark.Object>")
        (self).name = "interfaces.Bar"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_Bar_quark_Object__m1_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_Bar_quark_Object__m2_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_Bar_quark_Object__m3_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesBarQuarkObject.unlazy_statics


def self.interfaces_Baz_m2_Method; InterfacesBazM2Method; end
class InterfacesBazM2Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m2", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.Baz }
        obj.m2(::DatawireQuarkCore.cast((args)[0]) { ::Integer })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_Baz_m1_Method; InterfacesBazM1Method; end
class InterfacesBazM1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.Baz }
        obj.m1()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_Baz_m3_Method; InterfacesBazM3Method; end
class InterfacesBazM3Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m3", ::DatawireQuarkCore::List.new(["quark.List<quark.String>"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.Baz }
        obj.m3(::DatawireQuarkCore.cast((args)[0]) { ::DatawireQuarkCore::List })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_Baz; InterfacesBaz; end
class InterfacesBaz < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_Baz.new() }



    def initialize()
        
        super("interfaces.Baz")
        (self).name = "interfaces.Baz"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_Baz_m2_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_Baz_m1_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_Baz_m3_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.interfaces.Baz.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesBaz.unlazy_statics


def self.interfaces_RazBar_m1_Method; InterfacesRazBarM1Method; end
class InterfacesRazBarM1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.RazBar }
        obj.m1()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_RazBar_m2_Method; InterfacesRazBarM2Method; end
class InterfacesRazBarM2Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m2", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.RazBar }
        obj.m2(::DatawireQuarkCore.cast((args)[0]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_RazBar_m3_Method; InterfacesRazBarM3Method; end
class InterfacesRazBarM3Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m3", ::DatawireQuarkCore::List.new(["quark.List<quark.Object>"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.RazBar }
        obj.m3(::DatawireQuarkCore.cast((args)[0]) { ::DatawireQuarkCore::List })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_RazBar; InterfacesRazBar; end
class InterfacesRazBar < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_RazBar.new() }



    def initialize()
        
        super("interfaces.RazBar")
        (self).name = "interfaces.RazBar"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_RazBar_m1_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_RazBar_m2_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_RazBar_m3_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesRazBar.unlazy_statics


def self.interfaces_RazFaz_quark_Object__m1_Method; InterfacesRazFazQuarkObjectM1Method; end
class InterfacesRazFazQuarkObjectM1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.RazFaz }
        obj.m1()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_RazFaz_quark_Object__m2_Method; InterfacesRazFazQuarkObjectM2Method; end
class InterfacesRazFazQuarkObjectM2Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m2", ::DatawireQuarkCore::List.new(["quark.Object"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.RazFaz }
        obj.m2((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_RazFaz_quark_Object__m3_Method; InterfacesRazFazQuarkObjectM3Method; end
class InterfacesRazFazQuarkObjectM3Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m3", ::DatawireQuarkCore::List.new(["quark.List<quark.Object>"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.RazFaz }
        obj.m3(::DatawireQuarkCore.cast((args)[0]) { ::DatawireQuarkCore::List })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_RazFaz_quark_Object_; InterfacesRazFazQuarkObject; end
class InterfacesRazFazQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_RazFaz_quark_Object_.new() }



    def initialize()
        
        super("interfaces.RazFaz<quark.Object>")
        (self).name = "interfaces.RazFaz"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_RazFaz_quark_Object__m1_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_RazFaz_quark_Object__m2_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_RazFaz_quark_Object__m3_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesRazFazQuarkObject.unlazy_statics


def self.interfaces_BazBar_m1_Method; InterfacesBazBarM1Method; end
class InterfacesBazBarM1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.BazBar }
        obj.m1()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_BazBar_m2_Method; InterfacesBazBarM2Method; end
class InterfacesBazBarM2Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m2", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.BazBar }
        obj.m2(::DatawireQuarkCore.cast((args)[0]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_BazBar_m3_Method; InterfacesBazBarM3Method; end
class InterfacesBazBarM3Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m3", ::DatawireQuarkCore::List.new(["quark.List<quark.String>"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.BazBar }
        obj.m3(::DatawireQuarkCore.cast((args)[0]) { ::DatawireQuarkCore::List })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_BazBar; InterfacesBazBar; end
class InterfacesBazBar < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_BazBar.new() }



    def initialize()
        
        super("interfaces.BazBar")
        (self).name = "interfaces.BazBar"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_BazBar_m1_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_BazBar_m2_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_BazBar_m3_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.interfaces.BazBar.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesBazBar.unlazy_statics


def self.interfaces_BazFaz_quark_Object__m1_Method; InterfacesBazFazQuarkObjectM1Method; end
class InterfacesBazFazQuarkObjectM1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.BazFaz }
        obj.m1()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_BazFaz_quark_Object__m2_Method; InterfacesBazFazQuarkObjectM2Method; end
class InterfacesBazFazQuarkObjectM2Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m2", ::DatawireQuarkCore::List.new(["quark.Object"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.BazFaz }
        obj.m2((args)[0])
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_BazFaz_quark_Object__m3_Method; InterfacesBazFazQuarkObjectM3Method; end
class InterfacesBazFazQuarkObjectM3Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "m3", ::DatawireQuarkCore::List.new(["quark.List<quark.Object>"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.interfaces.BazFaz }
        obj.m3(::DatawireQuarkCore.cast((args)[0]) { ::DatawireQuarkCore::List })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.interfaces_BazFaz_quark_Object_; InterfacesBazFazQuarkObject; end
class InterfacesBazFazQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.interfaces_BazFaz_quark_Object_.new() }



    def initialize()
        
        super("interfaces.BazFaz<quark.Object>")
        (self).name = "interfaces.BazFaz"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.interfaces_BazFaz_quark_Object__m1_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_BazFaz_quark_Object__m2_Method.new(), ::Quark.quark_ffi_signatures_md.interfaces_BazFaz_quark_Object__m3_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.interfaces.BazFaz.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
InterfacesBazFazQuarkObject.unlazy_statics


def self.classes_Overload___add___Method; ClassesOverloadAddMethod; end
class ClassesOverloadAddMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.Overload", "__add__", ::DatawireQuarkCore::List.new(["classes.Overload"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.Overload }
        return obj.__add__(::DatawireQuarkCore.cast((args)[0]) { ::Quark.classes.Overload })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_Overload___mul___Method; ClassesOverloadMulMethod; end
class ClassesOverloadMulMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.Overload", "__mul__", ::DatawireQuarkCore::List.new(["classes.Overload"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.Overload }
        return obj.__mul__(::DatawireQuarkCore.cast((args)[0]) { ::Quark.classes.Overload })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_Overload_test_Method; ClassesOverloadTestMethod; end
class ClassesOverloadTestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.Overload }
        obj.test()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_Overload; ClassesOverload; end
class ClassesOverload < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_Overload.new() }



    def initialize()
        
        super("classes.Overload")
        (self).name = "classes.Overload"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_Overload___add___Method.new(), ::Quark.quark_ffi_signatures_md.classes_Overload___mul___Method.new(), ::Quark.quark_ffi_signatures_md.classes_Overload_test_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.Overload.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesOverload.unlazy_statics


def self.classes_Test_test_Method; ClassesTestTestMethod; end
class ClassesTestTestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.Test }
        obj.test()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_Test; ClassesTest; end
class ClassesTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_Test.new() }



    def initialize()
        
        super("classes.Test")
        (self).name = "classes.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_Test_test_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.Test.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesTest.unlazy_statics


def self.classes_string_test_check_Method; ClassesStringTestCheckMethod; end
class ClassesStringTestCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.string_test }
        obj.check(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::String }, ::DatawireQuarkCore.cast((args)[3]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_string_test; ClassesStringTest; end
class ClassesStringTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_string_test.new() }



    def initialize()
        
        super("classes.string_test")
        (self).name = "classes.string_test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_string_test_check_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.string_test.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesStringTest.unlazy_statics


def self.classes_test_size_does_Method; ClassesTestSizeDoesMethod; end
class ClassesTestSizeDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_size", "does", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_size }
        return obj.does(::DatawireQuarkCore.cast((args)[0]) { ::Integer })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_size_check_Method; ClassesTestSizeCheckMethod; end
class ClassesTestSizeCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_size }
        obj.check(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::String }, ::DatawireQuarkCore.cast((args)[3]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_size; ClassesTestSize; end
class ClassesTestSize < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_test_size.new() }



    def initialize()
        
        super("classes.test_size")
        (self).name = "classes.test_size"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_test_size_does_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_size_check_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("classes.string_test")])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.test_size.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesTestSize.unlazy_statics


def self.classes_test_startsWith_that_Method; ClassesTestStartsWithThatMethod; end
class ClassesTestStartsWithThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_startsWith", "that", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_startsWith }
        return obj.that(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_startsWith_does_Method; ClassesTestStartsWithDoesMethod; end
class ClassesTestStartsWithDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_startsWith", "does", ::DatawireQuarkCore::List.new(["quark.bool"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_startsWith }
        return obj.does(::DatawireQuarkCore.cast((args)[0]) { ::Object })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_startsWith_check_Method; ClassesTestStartsWithCheckMethod; end
class ClassesTestStartsWithCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_startsWith }
        obj.check(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::String }, ::DatawireQuarkCore.cast((args)[3]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_startsWith; ClassesTestStartsWith; end
class ClassesTestStartsWith < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_test_startsWith.new() }



    def initialize()
        
        super("classes.test_startsWith")
        (self).name = "classes.test_startsWith"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "_that")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_test_startsWith_that_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_startsWith_does_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_startsWith_check_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("classes.string_test")])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.test_startsWith.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesTestStartsWith.unlazy_statics


def self.classes_test_endsWith_that_Method; ClassesTestEndsWithThatMethod; end
class ClassesTestEndsWithThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_endsWith", "that", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_endsWith }
        return obj.that(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_endsWith_does_Method; ClassesTestEndsWithDoesMethod; end
class ClassesTestEndsWithDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_endsWith", "does", ::DatawireQuarkCore::List.new(["quark.bool"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_endsWith }
        return obj.does(::DatawireQuarkCore.cast((args)[0]) { ::Object })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_endsWith_check_Method; ClassesTestEndsWithCheckMethod; end
class ClassesTestEndsWithCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_endsWith }
        obj.check(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::String }, ::DatawireQuarkCore.cast((args)[3]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_endsWith; ClassesTestEndsWith; end
class ClassesTestEndsWith < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_test_endsWith.new() }



    def initialize()
        
        super("classes.test_endsWith")
        (self).name = "classes.test_endsWith"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "_that")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_test_endsWith_that_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_endsWith_does_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_endsWith_check_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("classes.string_test")])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.test_endsWith.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesTestEndsWith.unlazy_statics


def self.classes_test_find_that_Method; ClassesTestFindThatMethod; end
class ClassesTestFindThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_find", "that", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_find }
        return obj.that(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_find_does_Method; ClassesTestFindDoesMethod; end
class ClassesTestFindDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_find", "does", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_find }
        return obj.does(::DatawireQuarkCore.cast((args)[0]) { ::Integer })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_find_check_Method; ClassesTestFindCheckMethod; end
class ClassesTestFindCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_find }
        obj.check(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::String }, ::DatawireQuarkCore.cast((args)[3]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_find; ClassesTestFind; end
class ClassesTestFind < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_test_find.new() }



    def initialize()
        
        super("classes.test_find")
        (self).name = "classes.test_find"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "_that")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_test_find_that_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_find_does_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_find_check_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("classes.string_test")])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.test_find.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesTestFind.unlazy_statics


def self.classes_test_substring_that_Method; ClassesTestSubstringThatMethod; end
class ClassesTestSubstringThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_substring", "that", ::DatawireQuarkCore::List.new(["quark.int", "quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_substring }
        return obj.that(::DatawireQuarkCore.cast((args)[0]) { ::Integer }, ::DatawireQuarkCore.cast((args)[1]) { ::Integer })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_substring_does_Method; ClassesTestSubstringDoesMethod; end
class ClassesTestSubstringDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_substring", "does", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_substring }
        return obj.does(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_substring_check_Method; ClassesTestSubstringCheckMethod; end
class ClassesTestSubstringCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_substring }
        obj.check(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::String }, ::DatawireQuarkCore.cast((args)[3]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_substring; ClassesTestSubstring; end
class ClassesTestSubstring < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_test_substring.new() }



    def initialize()
        
        super("classes.test_substring")
        (self).name = "classes.test_substring"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.int", "start"), ::Quark.quark.reflect.Field.new("quark.int", "end")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_test_substring_that_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_substring_does_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_substring_check_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("classes.string_test")])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.test_substring.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesTestSubstring.unlazy_statics


def self.classes_test_replace_that_Method; ClassesTestReplaceThatMethod; end
class ClassesTestReplaceThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_replace", "that", ::DatawireQuarkCore::List.new(["quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_replace }
        return obj.that(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_replace_does_Method; ClassesTestReplaceDoesMethod; end
class ClassesTestReplaceDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_replace", "does", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_replace }
        return obj.does(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_replace_check_Method; ClassesTestReplaceCheckMethod; end
class ClassesTestReplaceCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_replace }
        obj.check(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::String }, ::DatawireQuarkCore.cast((args)[3]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_replace; ClassesTestReplace; end
class ClassesTestReplace < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_test_replace.new() }



    def initialize()
        
        super("classes.test_replace")
        (self).name = "classes.test_replace"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "start"), ::Quark.quark.reflect.Field.new("quark.String", "end")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_test_replace_that_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_replace_does_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_replace_check_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("classes.string_test")])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.test_replace.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesTestReplace.unlazy_statics


def self.classes_test_join_that_Method; ClassesTestJoinThatMethod; end
class ClassesTestJoinThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_join", "that", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_join }
        return obj.that()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_join_a_Method; ClassesTestJoinAMethod; end
class ClassesTestJoinAMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_join", "a", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_join }
        return obj.a(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_join_does_Method; ClassesTestJoinDoesMethod; end
class ClassesTestJoinDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_join", "does", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_join }
        return obj.does(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_join_check_Method; ClassesTestJoinCheckMethod; end
class ClassesTestJoinCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_join }
        obj.check(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::String }, ::DatawireQuarkCore.cast((args)[3]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_join; ClassesTestJoin; end
class ClassesTestJoin < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_test_join.new() }



    def initialize()
        
        super("classes.test_join")
        (self).name = "classes.test_join"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.List<quark.String>", "parts"), ::Quark.quark.reflect.Field.new("quark.String", "strparts"), ::Quark.quark.reflect.Field.new("quark.String", "sep")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_test_join_that_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_join_a_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_join_does_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_join_check_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("classes.string_test")])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.test_join.new(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesTestJoin.unlazy_statics


def self.classes_test_split_that_Method; ClassesTestSplitThatMethod; end
class ClassesTestSplitThatMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_split", "that", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_split }
        return obj.that(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_split_does_Method; ClassesTestSplitDoesMethod; end
class ClassesTestSplitDoesMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.test_split", "does", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_split }
        return obj.does(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_split_check_Method; ClassesTestSplitCheckMethod; end
class ClassesTestSplitCheckMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "check", ::DatawireQuarkCore::List.new(["quark.String", "quark.String", "quark.String", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.test_split }
        obj.check(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::String }, ::DatawireQuarkCore.cast((args)[3]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_test_split; ClassesTestSplit; end
class ClassesTestSplit < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_test_split.new() }



    def initialize()
        
        super("classes.test_split")
        (self).name = "classes.test_split"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "what"), ::Quark.quark.reflect.Field.new("quark.String", "sep"), ::Quark.quark.reflect.Field.new("quark.String", "altsep")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_test_split_that_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_split_does_Method.new(), ::Quark.quark_ffi_signatures_md.classes_test_split_check_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.get("classes.string_test")])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.test_split.new(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesTestSplit.unlazy_statics


def self.classes_stuff_Test_foo_Method; ClassesStuffTestFooMethod; end
class ClassesStuffTestFooMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("classes.stuff.Test", "foo", ::DatawireQuarkCore::List.new(["classes.stuff.Test"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.stuff.Test }
        return obj.foo(::DatawireQuarkCore.cast((args)[0]) { ::Quark.classes.stuff.Test })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_stuff_Test_test_Method; ClassesStuffTestTestMethod; end
class ClassesStuffTestTestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.classes.stuff.Test }
        obj.test()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.classes_stuff_Test; ClassesStuffTest; end
class ClassesStuffTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.classes_stuff_Test.new() }



    def initialize()
        
        super("classes.stuff.Test")
        (self).name = "classes.stuff.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.classes_stuff_Test_foo_Method.new(), ::Quark.quark_ffi_signatures_md.classes_stuff_Test_test_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.classes.stuff.Test.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
ClassesStuffTest.unlazy_statics


def self.statics_Foo_setCount_Method; StaticsFooSetCountMethod; end
class StaticsFooSetCountMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "setCount", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.statics.Foo }
        ::Quark.statics.Foo.setCount(::DatawireQuarkCore.cast((args)[0]) { ::Integer })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.statics_Foo_getCount_Method; StaticsFooGetCountMethod; end
class StaticsFooGetCountMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.int", "getCount", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.statics.Foo }
        return ::Quark.statics.Foo.getCount()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.statics_Foo_test1_Method; StaticsFooTest1Method; end
class StaticsFooTest1Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test1", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.statics.Foo }
        obj.test1()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.statics_Foo_test2_Method; StaticsFooTest2Method; end
class StaticsFooTest2Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test2", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.statics.Foo }
        obj.test2()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.statics_Foo_test3_Method; StaticsFooTest3Method; end
class StaticsFooTest3Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test3", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.statics.Foo }
        obj.test3()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.statics_Foo_test4_Method; StaticsFooTest4Method; end
class StaticsFooTest4Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "test4", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.statics.Foo }
        obj.test4()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.statics_Foo; StaticsFoo; end
class StaticsFoo < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.statics_Foo.new() }



    def initialize()
        
        super("statics.Foo")
        (self).name = "statics.Foo"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "count")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.statics_Foo_setCount_Method.new(), ::Quark.quark_ffi_signatures_md.statics_Foo_getCount_Method.new(), ::Quark.quark_ffi_signatures_md.statics_Foo_test1_Method.new(), ::Quark.quark_ffi_signatures_md.statics_Foo_test2_Method.new(), ::Quark.quark_ffi_signatures_md.statics_Foo_test3_Method.new(), ::Quark.quark_ffi_signatures_md.statics_Foo_test4_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.statics.Foo.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
StaticsFoo.unlazy_statics


def self.docs_Test_test_Method; DocsTestTestMethod; end
class DocsTestTestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.int", "test", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.docs.Test }
        return obj.test(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end

def self.docs_Test; DocsTest; end
class DocsTest < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.docs_Test.new() }



    def initialize()
        
        super("docs.Test")
        (self).name = "docs.Test"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.quark_ffi_signatures_md.docs_Test_test_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::Quark.docs.Test.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
DocsTest.unlazy_statics


def self.quark_List_quark_List_quark_Object__; QuarkListQuarkListQuarkObject; end
class QuarkListQuarkListQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.quark_List_quark_List_quark_Object__.new() }



    def initialize()
        
        super("quark.List<quark.List<quark.Object>>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.List<quark.Object>"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
QuarkListQuarkListQuarkObject.unlazy_statics


def self.quark_List_quark_Object_; QuarkListQuarkObject; end
class QuarkListQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.quark_List_quark_Object_.new() }



    def initialize()
        
        super("quark.List<quark.Object>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
QuarkListQuarkObject.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.quark_ffi_signatures_md.quark_List_quark_String_.new() }



    def initialize()
        
        super("quark.List<quark.String>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.QuarkClass.OBJECT])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
        
        super

        nil
    end


end
QuarkListQuarkString.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static generics_Box_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.generics_Box_quark_Object_.singleton }
    static generics_Box_quark_int__md: -> { ::Quark.quark_ffi_signatures_md.generics_Box_quark_int_.singleton }
    static generics_Crate_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.generics_Crate_quark_Object_.singleton }
    static generics_Sack_md: -> { ::Quark.quark_ffi_signatures_md.generics_Sack.singleton }
    static generics_Matrix_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.generics_Matrix_quark_Object_.singleton }
    static generics_constructors_Box_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.generics_constructors_Box_quark_Object_.singleton }
    static generics_pkg_Foo_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.generics_pkg_Foo_quark_Object_.singleton }
    static generics_pkg_StringFoo_md: -> { ::Quark.quark_ffi_signatures_md.generics_pkg_StringFoo.singleton }
    static generics_pkg_Box_quark_String__md: -> { ::Quark.quark_ffi_signatures_md.generics_pkg_Box_quark_String_.singleton }
    static generics_pkg_StringBox_md: -> { ::Quark.quark_ffi_signatures_md.generics_pkg_StringBox.singleton }
    static generics_ccc_TLSContextInitializer_md: -> { ::Quark.quark_ffi_signatures_md.generics_ccc_TLSContextInitializer.singleton }
    static generics_ccc_Context_md: -> { ::Quark.quark_ffi_signatures_md.generics_ccc_Context.singleton }
    static generics_ccc_TLSInitializer_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.generics_ccc_TLSInitializer_quark_Object_.singleton }
    static generics_ccc_TLS_generics_ccc_Context__md: -> { ::Quark.quark_ffi_signatures_md.generics_ccc_TLS_generics_ccc_Context_.singleton }
    static inheritance_Base_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_Base.singleton }
    static inheritance_Test_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_Test.singleton }
    static inheritance_A_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_A.singleton }
    static inheritance_B_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_B.singleton }
    static inheritance_C_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_C.singleton }
    static inheritance_X_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_X.singleton }
    static inheritance_Y_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_Y.singleton }
    static inheritance_t1_A_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_t1_A.singleton }
    static inheritance_t1_B_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_t1_B.singleton }
    static inheritance_t1_C_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_t1_C.singleton }
    static inheritance_t2_A_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_t2_A.singleton }
    static inheritance_t2_B_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_t2_B.singleton }
    static inheritance_t2_X_quark_int__md: -> { ::Quark.quark_ffi_signatures_md.inheritance_t2_X_quark_int_.singleton }
    static inheritance_t2_Y_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_t2_Y.singleton }
    static inheritance_pets_Cat_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_pets_Cat.singleton }
    static inheritance_pets_Dog_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_pets_Dog.singleton }
    static inheritance_Message_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_Message.singleton }
    static inheritance_Ping_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_Ping.singleton }
    static inheritance_Pong_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_Pong.singleton }
    static inheritance_super__A_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_super__A.singleton }
    static inheritance_super__B_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_super__B.singleton }
    static inheritance_use_before_def_Bar_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_use_before_def_Bar.singleton }
    static inheritance_use_before_def_Foo_md: -> { ::Quark.quark_ffi_signatures_md.inheritance_use_before_def_Foo.singleton }
    static interfaces_A_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_A.singleton }
    static interfaces_B_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_B.singleton }
    static interfaces_C_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_C.singleton }
    static interfaces_T1_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_T1.singleton }
    static interfaces_T2_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_T2.singleton }
    static interfaces_T3_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_T3.singleton }
    static interfaces_T4_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_T4.singleton }
    static interfaces_T5_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_T5.singleton }
    static interfaces_Foo_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_Foo.singleton }
    static interfaces_Bar_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.interfaces_Bar_quark_Object_.singleton }
    static interfaces_Baz_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_Baz.singleton }
    static interfaces_RazBar_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_RazBar.singleton }
    static interfaces_RazFaz_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.interfaces_RazFaz_quark_Object_.singleton }
    static interfaces_BazBar_md: -> { ::Quark.quark_ffi_signatures_md.interfaces_BazBar.singleton }
    static interfaces_BazFaz_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.interfaces_BazFaz_quark_Object_.singleton }
    static classes_Overload_md: -> { ::Quark.quark_ffi_signatures_md.classes_Overload.singleton }
    static classes_Test_md: -> { ::Quark.quark_ffi_signatures_md.classes_Test.singleton }
    static classes_string_test_md: -> { ::Quark.quark_ffi_signatures_md.classes_string_test.singleton }
    static classes_test_size_md: -> { ::Quark.quark_ffi_signatures_md.classes_test_size.singleton }
    static classes_test_startsWith_md: -> { ::Quark.quark_ffi_signatures_md.classes_test_startsWith.singleton }
    static classes_test_endsWith_md: -> { ::Quark.quark_ffi_signatures_md.classes_test_endsWith.singleton }
    static classes_test_find_md: -> { ::Quark.quark_ffi_signatures_md.classes_test_find.singleton }
    static classes_test_substring_md: -> { ::Quark.quark_ffi_signatures_md.classes_test_substring.singleton }
    static classes_test_replace_md: -> { ::Quark.quark_ffi_signatures_md.classes_test_replace.singleton }
    static classes_test_join_md: -> { ::Quark.quark_ffi_signatures_md.classes_test_join.singleton }
    static classes_test_split_md: -> { ::Quark.quark_ffi_signatures_md.classes_test_split.singleton }
    static classes_stuff_Test_md: -> { ::Quark.quark_ffi_signatures_md.classes_stuff_Test.singleton }
    static statics_Foo_md: -> { ::Quark.quark_ffi_signatures_md.statics_Foo.singleton }
    static docs_Test_md: -> { ::Quark.quark_ffi_signatures_md.docs_Test.singleton }
    static quark_List_quark_List_quark_Object___md: -> { ::Quark.quark_ffi_signatures_md.quark_List_quark_List_quark_Object__.singleton }
    static quark_List_quark_Object__md: -> { ::Quark.quark_ffi_signatures_md.quark_List_quark_Object_.singleton }
    static quark_List_quark_String__md: -> { ::Quark.quark_ffi_signatures_md.quark_List_quark_String_.singleton }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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
end # module QuarkFfiSignaturesMd
end # module Quark
