module Quark
def self.use_class_before_def_md; UseClassBeforeDefMd; end
module UseClassBeforeDefMd
require 'quark' # .../reflect
# for ('use_class_before_def_md',): require_relative 'pkg' # 0 () ()

def self.pkg_Bar_go_Method; PkgBarGoMethod; end
class PkgBarGoMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "go", ::DatawireQuarkCore::List.new([]))

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

def self.pkg_Bar; PkgBar; end
class PkgBar < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.use_class_before_def_md.pkg_Bar.new() }



    def initialize()
        
        super("pkg.Bar")
        (self).name = "pkg.Bar"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.use_class_before_def_md.pkg_Bar_go_Method.new()])

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
PkgBar.unlazy_statics

def self.pkg_Foo; PkgFoo; end
class PkgFoo < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.use_class_before_def_md.pkg_Foo.new() }



    def initialize()
        
        super("pkg.Foo")
        (self).name = "pkg.Foo"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "name")])
        (self).methods = ::DatawireQuarkCore::List.new([])

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
PkgFoo.unlazy_statics

def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

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
Root.unlazy_statics
end # module UseClassBeforeDefMd
end # module Quark
