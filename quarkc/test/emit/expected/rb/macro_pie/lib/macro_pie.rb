module Quark
require "quark"
def self.macro_pie; MODULE_macro_pie; end
module MODULE_macro_pie
require 'quark' # .../reflect
require_relative 'macro_pie_md' # 0 () ()
require_relative 'macro_pie' # 0 () ()

def self.Pie; CLASS_Pie; end
class CLASS_Pie < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static macro_pie_Pie_ref: -> { ::Quark.macro_pie_md.Root.macro_pie_Pie_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test()
        
        p = ::Quark.macro_pie.Pie.new()
        x = 3

        nil
    end

    def _getClass()
        
        return "macro_pie.Pie"

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
CLASS_Pie.unlazy_statics

def self.main()
    
    ::DatawireQuarkCore.print(3)


    nil
end

if __FILE__ == $0
    ::Quark.macro_pie.main()
end

end # module MODULE_macro_pie
end # module Quark
