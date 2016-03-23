module Quark
def self.parameterized_defaults_md; MODULE_parameterized_defaults_md; end
module MODULE_parameterized_defaults_md
require 'builtin' # .../reflect
require_relative 'pkg' # 0 () ()

def self.pkg_Foo_builtin_Object__foo_Method; CLASS_pkg_Foo_builtin_Object__foo_Method; end
class CLASS_pkg_Foo_builtin_Object__foo_Method < ::Quark.builtin.reflect.Method



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

def self.pkg_Foo_builtin_Object__get_Method; CLASS_pkg_Foo_builtin_Object__get_Method; end
class CLASS_pkg_Foo_builtin_Object__get_Method < ::Quark.builtin.reflect.Method



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

def self.pkg_Foo_builtin_Object_; CLASS_pkg_Foo_builtin_Object_; end
class CLASS_pkg_Foo_builtin_Object_ < ::Quark.builtin.reflect.QuarkClass
    extend DatawireQuarkCore::Static

    static singleton: -> { ::Quark.parameterized_defaults_md.pkg_Foo_builtin_Object_.new() }



    def initialize()
        
        super("pkg.Foo<builtin.Object>")
        (self).name = "pkg.Foo"
        (self).parameters = DatawireQuarkCore::List.new(["builtin.Object"])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.parameterized_defaults_md.pkg_Foo_builtin_Object__foo_Method.new(), ::Quark.parameterized_defaults_md.pkg_Foo_builtin_Object__get_Method.new()])

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
CLASS_pkg_Foo_builtin_Object_.unlazy_statics

def self.pkg_StringFoo_get_Method; CLASS_pkg_StringFoo_get_Method; end
class CLASS_pkg_StringFoo_get_Method < ::Quark.builtin.reflect.Method



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

def self.pkg_StringFoo_foo_Method; CLASS_pkg_StringFoo_foo_Method; end
class CLASS_pkg_StringFoo_foo_Method < ::Quark.builtin.reflect.Method



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

def self.pkg_StringFoo; CLASS_pkg_StringFoo; end
class CLASS_pkg_StringFoo < ::Quark.builtin.reflect.QuarkClass
    extend DatawireQuarkCore::Static

    static singleton: -> { ::Quark.parameterized_defaults_md.pkg_StringFoo.new() }



    def initialize()
        
        super("pkg.StringFoo")
        (self).name = "pkg.StringFoo"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.parameterized_defaults_md.pkg_StringFoo_get_Method.new(), ::Quark.parameterized_defaults_md.pkg_StringFoo_foo_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.pkg.StringFoo.new()

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
CLASS_pkg_StringFoo.unlazy_statics

def self.pkg_Box_builtin_String_; CLASS_pkg_Box_builtin_String_; end
class CLASS_pkg_Box_builtin_String_ < ::Quark.builtin.reflect.QuarkClass
    extend DatawireQuarkCore::Static

    static singleton: -> { ::Quark.parameterized_defaults_md.pkg_Box_builtin_String_.new() }



    def initialize()
        
        super("pkg.Box<builtin.String>")
        (self).name = "pkg.Box"
        (self).parameters = DatawireQuarkCore::List.new(["builtin.String"])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "contents")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.pkg.Box.new((args)[0])

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
CLASS_pkg_Box_builtin_String_.unlazy_statics

def self.pkg_StringBox; CLASS_pkg_StringBox; end
class CLASS_pkg_StringBox < ::Quark.builtin.reflect.QuarkClass
    extend DatawireQuarkCore::Static

    static singleton: -> { ::Quark.parameterized_defaults_md.pkg_StringBox.new() }



    def initialize()
        
        super("pkg.StringBox")
        (self).name = "pkg.StringBox"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "contents")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.pkg.StringBox.new((args)[0])

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
CLASS_pkg_StringBox.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < Object
    extend DatawireQuarkCore::Static

    static pkg_Foo_builtin_Object__md: -> { ::Quark.parameterized_defaults_md.pkg_Foo_builtin_Object_.singleton }
    static pkg_StringFoo_md: -> { ::Quark.parameterized_defaults_md.pkg_StringFoo.singleton }
    static pkg_Box_builtin_String__md: -> { ::Quark.parameterized_defaults_md.pkg_Box_builtin_String_.singleton }
    static pkg_StringBox_md: -> { ::Quark.parameterized_defaults_md.pkg_StringBox.singleton }



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
CLASS_Root.unlazy_statics
end # module MODULE_parameterized_defaults_md
end # module Quark
