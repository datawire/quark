module Quark
require "quark"
def self.pkg; Pkg; end
module Pkg
require 'quark' # .../reflect
require_relative 'use_class_before_def_md' # 0 () ()


def self.Bar; Bar; end
class Bar < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static pkg_Bar_ref: -> { ::Quark.use_class_before_def_md.Root.pkg_Bar_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def go()
        
        foo = ::Quark.pkg.Foo.new()
        (foo).name = "bob"
        ::DatawireQuarkCore.print((foo).name)

        nil
    end

    def _getClass()
        
        return "pkg.Bar"

        nil
    end

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
Bar.unlazy_statics

def self.Foo; Foo; end
class Foo < ::DatawireQuarkCore::QuarkObject
    attr_accessor :name
    extend ::DatawireQuarkCore::Static

    static pkg_Foo_ref: -> { ::Quark.use_class_before_def_md.Root.pkg_Foo_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "pkg.Foo"

        nil
    end

    def _getField(name)
        
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        
        self.name = nil

        nil
    end


end
Foo.unlazy_statics
end # module Pkg
end # module Quark
