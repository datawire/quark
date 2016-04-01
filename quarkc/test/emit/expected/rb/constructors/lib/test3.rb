module Quark
require "quark"
def self.test3; Test3; end
module Test3

def self.Box; Box; end
class Box < ::DatawireQuarkCore::QuarkObject
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
        
        return "test3.Box<quark.Object>"

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
    ::DatawireQuarkCore.print(box.get())
    ::DatawireQuarkCore.print((box).contents)
    ::DatawireQuarkCore.print(::Quark.test3.Box.new("Hello World!!!").get())
    ::DatawireQuarkCore.print((::Quark.test3.Box.new("Hello World!!!")).contents)


    nil
end
end # module Test3
end # module Quark
