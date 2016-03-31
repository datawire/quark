module Quark
require "quark"
def self.pkg; Pkg; end
module Pkg
require 'quark' # .../reflect
require_relative 'extending_primitives_md' # 0 () ()

def self.C; C; end
class C < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static pkg_C_ref: -> { ::Quark.extending_primitives_md.Root.pkg_C_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def event1()
        
        ::DatawireQuarkCore.print("event1")

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
        
        ::DatawireQuarkCore.print("running")

        nil
    end

    def event2()
        
        ::DatawireQuarkCore.print("default event2")

        nil
    end

    def __init_fields__()
        

        nil
    end


end
C.unlazy_statics
end # module Pkg
end # module Quark
