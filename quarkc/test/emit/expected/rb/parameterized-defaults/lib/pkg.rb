module Quark
require "builtin"
def self.pkg; MODULE_pkg; end
module MODULE_pkg
require 'builtin' # .../reflect
require_relative 'parameterized_defaults_md' # 0 () ()

def self.Foo; CLASS_Foo; end
class CLASS_Foo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static pkg_Foo_builtin_Object__ref: -> { ::Quark.parameterized_defaults_md.Root.pkg_Foo_builtin_Object__md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        return self.get()

        nil
    end

    def get()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
CLASS_Foo.unlazy_statics

def self.StringFoo; CLASS_StringFoo; end
class CLASS_StringFoo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static pkg_StringFoo_ref: -> { ::Quark.parameterized_defaults_md.Root.pkg_StringFoo_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def get()
        
        return "fdsa"

        nil
    end

    def _getClass()
        
        return "pkg.StringFoo"

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def foo()
        
        return self.get()

        nil
    end

    def __init_fields__()
        

        nil
    end


end
CLASS_StringFoo.unlazy_statics

def self.Box; CLASS_Box; end
class CLASS_Box < ::DatawireQuarkCore::QuarkObject
    attr_accessor :contents



    def initialize(contents)
        
        self.__init_fields__
        (self).contents = contents

        nil
    end




    def _getClass()
        
        return "pkg.Box<builtin.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("contents"))
            return (self).contents
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("contents"))
            (self).contents = value
        end

        nil
    end

    def __init_fields__()
        

        self.contents = nil

        nil
    end


end

def self.StringBox; CLASS_StringBox; end
class CLASS_StringBox < ::Quark.pkg.Box
    extend ::DatawireQuarkCore::Static

    static pkg_Box_builtin_String__ref: -> { ::Quark.parameterized_defaults_md.Root.pkg_Box_builtin_String__md }
    static pkg_StringBox_ref: -> { ::Quark.parameterized_defaults_md.Root.pkg_StringBox_md }



    def initialize(contents)
        
        super(contents)

        nil
    end




    def _getClass()
        
        return "pkg.StringBox"

        nil
    end

    def _getField(name)
        
        if ((name) == ("contents"))
            return (self).contents
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("contents"))
            (self).contents = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end
CLASS_StringBox.unlazy_statics

def self.main()
    
    box = ::Quark.pkg.StringBox.new("asdf")
    ::DatawireQuarkCore.print((box).contents)
    foo = ::Quark.pkg.StringFoo.new()
    ::DatawireQuarkCore.print(foo.foo())


    nil
end
end # module MODULE_pkg
end # module Quark
