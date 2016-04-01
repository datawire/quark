module Quark
require "quark"
def self.macro_native; MacroNative; end
module MacroNative
require 'quark' # .../reflect
require_relative 'macro_native_md' # 0 () ()

def self.Native; Native; end
class Native < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static macro_native_Native_ref: -> { ::Quark.macro_native_md.Root.macro_native_Native_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test_()
        
        n1 = ::Quark.macro_native.Native.new()
        n2 = ::Quark.macro_native.Native.new()
        n1n2 = ::Quark.macro_native.Native.new()
        n3 = n1n2

        nil
    end

    def _getClass()
        
        return "macro_native.Native"

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
Native.unlazy_statics
end # module MacroNative
end # module Quark
