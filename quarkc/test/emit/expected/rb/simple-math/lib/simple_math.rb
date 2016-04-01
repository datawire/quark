module Quark
require "quark"
def self.simple_math; SimpleMath; end
module SimpleMath
require_relative 'simple_math' # 0 () ()

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
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

if __FILE__ == $0 then ::Quark.simple_math.call_main() end

end # module SimpleMath
end # module Quark
