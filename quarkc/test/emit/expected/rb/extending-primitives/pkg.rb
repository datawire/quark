require "datawire-quark-core"
require "../builtin"
require "../extending_primitives_md"


class C < Object
    attr_accessor 

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def event1()
        
        DatawireQuarkCore.print("event1")

        nil
    end

    def _getClass()
        
        return "pkg.C"

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

    def run()
        
        DatawireQuarkCore.print("running")

        nil
    end

    def event2()
        
        DatawireQuarkCore.print("default event2")

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class Functions < Object
    

    

    
    def self.main()
        
        c = C.new()
        c.event1()
        c.event2()
        c.run()

        nil
    end


end
