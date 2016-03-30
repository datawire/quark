module Quark
require "quark"
def self.numbers; MODULE_numbers; end
module MODULE_numbers
require_relative 'numbers' # 0 () ()

def self.main()
    
    a = 2
    b = 2
    ::DatawireQuarkCore.print(((a) + (b)).to_s)


    nil
end

if __FILE__ == $0
    ::Quark.numbers.main()
end

end # module MODULE_numbers
end # module Quark
