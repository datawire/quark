module Quark
require "datawire-quark-core"
def self.pkg; MODULE_pkg; end
module MODULE_pkg
require 'builtin' # .../reflect
require 'extending_primitives_md'

def self.C; CLASS_C; end
class CLASS_C < Object
    attr_accessor 
    extend DatawireQuarkCore::Static


    static pkg_C_ref: -> { ::Quark.extending_primitives_md.Root.pkg_C_md }


    
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

def self.main()
    
    c = ::Quark.pkg.C.new()
    c.event1()
    c.event2()
    c.run()


    nil
end
end # module MODULE_pkg
end # module Quark
