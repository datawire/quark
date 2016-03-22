module Quark
require "datawire-quark-core"
def self.test3; MODULE_test3; end
module MODULE_test3
def self.Box; CLASS_Box; end
class CLASS_Box < Object
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

def self.go()
    
    box = ::Quark.test3.Box.new("Hello World!!!")
    DatawireQuarkCore.print(box.get())
    DatawireQuarkCore.print((box).contents)
    DatawireQuarkCore.print(::Quark.test3.Box.new("Hello World!!!").get())
    DatawireQuarkCore.print((::Quark.test3.Box.new("Hello World!!!")).contents)


    nil
end
end # module MODULE_test3
end # module Quark
