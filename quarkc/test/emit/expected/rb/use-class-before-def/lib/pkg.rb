module Quark
require "datawire-quark-core"
def self.pkg; MODULE_pkg; end
module MODULE_pkg
require 'builtin' # .../reflect
require 'use_class_before_def_md'

class CLASS_Bar < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def go()
        
        foo = ::Quark.pkg.Foo.new()
        (foo).name = "bob"
        DatawireQuarkCore.print((foo).name)

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


end; def self.Bar; CLASS_Bar; end

class CLASS_Foo < Object
    attr_accessor :name

    
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


end; def self.Foo; CLASS_Foo; end

def self.main()
    
    bar = ::Quark.pkg.Bar.new()
    bar.go()


    nil
end
end # module MODULE_pkg
end # module Quark
