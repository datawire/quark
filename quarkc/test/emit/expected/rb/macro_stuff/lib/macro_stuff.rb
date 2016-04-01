module Quark
require "quark"
def self.macro_stuff; MacroStuff; end
module MacroStuff
require 'quark' # .../reflect
require_relative 'macro_stuff_md' # 0 () ()


def self.Macro; Macro; end
class Macro < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static macro_stuff_Macro_ref: -> { ::Quark.macro_stuff_md.Root.macro_stuff_Macro_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        m1 = ::Quark.macro_stuff.Macro.new()
        m2 = ::Quark.macro_stuff.Macro.new()
        m3 = m1
        m4 = m1
        m5 = m2
        m6 = m2
        m7 = m1
        m8 = m1
        m9 = m2
        m10 = m2

        nil
    end

    def _getClass()
        
        return "macro_stuff.Macro"

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
Macro.unlazy_statics
end # module MacroStuff
end # module Quark
