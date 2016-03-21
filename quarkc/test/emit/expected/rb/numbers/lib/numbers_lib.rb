module Quark
require "datawire-quark-core"
def self.numbers_lib; MODULE_numbers_lib; end
module MODULE_numbers_lib
def self.main()
    
    a = 2
    b = 2
    DatawireQuarkCore.print(((a) + (b)).to_s)


    nil
end
end # module MODULE_numbers_lib
end # module Quark
