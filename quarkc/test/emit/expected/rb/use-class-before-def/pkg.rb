require "datawire-quark-core"
require "../builtin"
require "../use_class_before_def_md"


class Bar < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def go()
        
        foo = Foo.new()
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


end

class Foo < Object
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


end

class Functions < Object
    

    

    
    def self.main()
        
        bar = Bar.new()
        bar.go()

        nil
    end


end
