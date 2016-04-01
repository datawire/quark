module Quark
require "quark"
def self.pkg; Pkg; end
module Pkg
require 'quark' # .../reflect
require_relative 'parameterized_defaults_md' # 0 () ()


def self.Foo; Foo; end
class Foo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static pkg_Foo_quark_Object__ref: -> { ::Quark.parameterized_defaults_md.Root.pkg_Foo_quark_Object__md }



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
Foo.unlazy_statics

def self.StringFoo; StringFoo; end
class StringFoo < ::DatawireQuarkCore::QuarkObject
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
StringFoo.unlazy_statics

def self.Box; Box; end
class Box < ::DatawireQuarkCore::QuarkObject
    attr_accessor :contents



    def initialize(contents)
        
        self.__init_fields__
        (self).contents = contents

        nil
    end




    def _getClass()
        
        return "pkg.Box<quark.Object>"

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

def self.StringBox; StringBox; end
class StringBox < ::Quark.pkg.Box
    extend ::DatawireQuarkCore::Static

    static pkg_Box_quark_String__ref: -> { ::Quark.parameterized_defaults_md.Root.pkg_Box_quark_String__md }
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
StringBox.unlazy_statics
end # module Pkg
end # module Quark
