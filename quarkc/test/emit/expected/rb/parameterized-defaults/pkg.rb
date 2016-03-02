require "datawire-quark-core"
require "../builtin"
require "../parameterized_defaults_md"


class Foo < Object
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


end

class StringFoo < Object
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


end

class Box < Object
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

class StringBox < Box
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


end

class Functions < Object
    

    

    
    def self.main()
        
        box = StringBox.new("asdf")
        DatawireQuarkCore.print((box).contents)
        foo = StringFoo.new()
        DatawireQuarkCore.print(foo.foo())

        nil
    end


end
