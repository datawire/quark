module Quark
require "datawire-quark-core"
def self.pkg; MODULE_pkg; end
module MODULE_pkg
# require_relatve "builtin/reflect.rb"
# require_relatve "parameterized_defaults_md.rb"

class CLASS_Foo < Object
    attr_accessor 

    
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


end; def self.Foo; CLASS_Foo; end

class CLASS_StringFoo < Object
    attr_accessor 

    
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


end; def self.StringFoo; CLASS_StringFoo; end

class CLASS_Box < Object
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


end; def self.Box; CLASS_Box; end

class CLASS_StringBox < ::Quark.pkg.Box
    attr_accessor 

    
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


end; def self.StringBox; CLASS_StringBox; end

def self.main()
    
    box = ::Quark.pkg.StringBox.new("asdf")
    DatawireQuarkCore.print((box).contents)
    foo = ::Quark.pkg.StringFoo.new()
    DatawireQuarkCore.print(foo.foo())


    nil
end
end # module MODULE_pkg
end # module Quark
