module Quark
require "quark"
def self.generics; Generics; end
module Generics
def self.pkg; Pkg; end
module Pkg
require 'quark' # .../reflect generics/pkg
require_relative '../quark_ffi_signatures_md' # 0 () ('generics',)


def self.Foo; Foo; end
class Foo < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static generics_pkg_Foo_quark_Object__ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_pkg_Foo_quark_Object__md }



    def initialize()
        self.__init_fields__

        nil
    end




    def foo()
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.T }

        nil
    end

    def get()
        raise NotImplementedError, '`Foo.get` is an abstract method'

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

    static generics_pkg_StringFoo_ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_pkg_StringFoo_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def get()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getClass()
        
        return "generics.pkg.StringFoo"

        nil
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
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

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

        nil
    end




    def _getClass()
        
        return "generics.pkg.Box<quark.Object>"

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
            (self).contents = ::DatawireQuarkCore.cast(value) { ::Quark.T }
        end

        nil
    end

    def __init_fields__()
        
        self.contents = nil

        nil
    end


end

def self.StringBox; StringBox; end
class StringBox < ::Quark.generics.pkg.Box
    extend ::DatawireQuarkCore::Static

    static generics_pkg_Box_quark_String__ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_pkg_Box_quark_String__md }
    static generics_pkg_StringBox_ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_pkg_StringBox_md }



    def initialize(contents)
        
        super(contents)

        nil
    end




    def _getClass()
        
        return "generics.pkg.StringBox"

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
            (self).contents = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
StringBox.unlazy_statics
end # module Pkg
end # module Generics
end # module Quark
