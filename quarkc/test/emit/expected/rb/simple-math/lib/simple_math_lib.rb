module Quark
require "builtin"
def self.simple_math_lib; MODULE_simple_math_lib; end
module MODULE_simple_math_lib
def self.main()
    
    four = (2) + (2)
    ::DatawireQuarkCore.print((four).to_s)
    half = (1) / (2)
    ::DatawireQuarkCore.print((half).to_s)
    num = 314.0
    den = 100.0
    pi = (num) / (den)
    ::DatawireQuarkCore.print((pi).to_s)
    pie = 3.14
    ::DatawireQuarkCore.print((pie).to_s)
    n = (-(100)) / (3)
    ::DatawireQuarkCore.print((n).to_s)
    m = (100) / (-(3))
    ::DatawireQuarkCore.print((m).to_s)
    l = (100) % (3)
    ::DatawireQuarkCore.print((l).to_s)
    k = (-(100)) % (3)
    ::DatawireQuarkCore.print((k).to_s)


    nil
end
end # module MODULE_simple_math_lib
end # module Quark
