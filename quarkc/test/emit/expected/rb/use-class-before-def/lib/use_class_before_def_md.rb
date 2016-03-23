module Quark
def self.use_class_before_def_md; MODULE_use_class_before_def_md; end
module MODULE_use_class_before_def_md
require 'builtin' # .../reflect
require_relative 'pkg' # 0 () ()

def self.pkg_Bar_go_Method; CLASS_pkg_Bar_go_Method; end
class CLASS_pkg_Bar_go_Method < ::Quark.builtin.reflect.Method



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

def self.pkg_Bar; CLASS_pkg_Bar; end
class CLASS_pkg_Bar < ::Quark.builtin.reflect.QuarkClass
    extend DatawireQuarkCore::Static

    static singleton: -> { ::Quark.use_class_before_def_md.pkg_Bar.new() }



    def initialize()
        
        super("pkg.Bar")
        (self).name = "pkg.Bar"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([])
        (self).methods = DatawireQuarkCore::List.new([::Quark.use_class_before_def_md.pkg_Bar_go_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.pkg.Bar.new()

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
CLASS_pkg_Bar.unlazy_statics

def self.pkg_Foo; CLASS_pkg_Foo; end
class CLASS_pkg_Foo < ::Quark.builtin.reflect.QuarkClass
    extend DatawireQuarkCore::Static

    static singleton: -> { ::Quark.use_class_before_def_md.pkg_Foo.new() }



    def initialize()
        
        super("pkg.Foo")
        (self).name = "pkg.Foo"
        (self).parameters = DatawireQuarkCore::List.new([])
        (self).fields = DatawireQuarkCore::List.new([::Quark.builtin.reflect.Field.new("builtin.String", "name")])
        (self).methods = DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.pkg.Foo.new()

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
CLASS_pkg_Foo.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < Object
    extend DatawireQuarkCore::Static

    static pkg_Bar_md: -> { ::Quark.use_class_before_def_md.pkg_Bar.singleton }
    static pkg_Foo_md: -> { ::Quark.use_class_before_def_md.pkg_Foo.singleton }



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
end # module MODULE_use_class_before_def_md
end # module Quark
