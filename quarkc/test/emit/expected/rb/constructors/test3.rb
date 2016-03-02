require "datawire-quark-core"

class Box < Object
    attr_accessor :contents

    
    def initialize(contents)
        
        self.__init_fields__
        (self).contents = contents

        nil
    end



    
    def get()
        
        return (self).contents

        nil
    end

    def _getClass()
        
        return "test3.Box<builtin.Object>"

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

class Functions < Object
    

    

    
    def self.go()
        
        box = Box.new("Hello World!!!")
        DatawireQuarkCore.print(box.get())
        DatawireQuarkCore.print((box).contents)
        DatawireQuarkCore.print(Box.new("Hello World!!!").get())
        DatawireQuarkCore.print((Box.new("Hello World!!!")).contents)

        nil
    end


end
