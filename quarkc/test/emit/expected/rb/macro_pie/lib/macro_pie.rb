module Quark
require "quark"
def self.macro_pie; MacroPie; end
module MacroPie
require 'quark' # .../reflect
require_relative 'macro_pie_md' # 0 () ()
require_relative 'macro_pie' # 0 () ()

def self.Pie; Pie; end
class Pie < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static macro_pie_Pie_ref: -> { ::Quark.macro_pie_md.Root.macro_pie_Pie_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def test_()
        
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
Pie.unlazy_statics

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::DatawireQuarkCore.print(3)


    nil
end

if __FILE__ == $0 then ::Quark.macro_pie.call_main() end

end # module MacroPie
end # module Quark
