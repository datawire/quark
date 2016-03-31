module Quark
require "quark"
def self.fancy_primitive; FancyPrimitive; end
module FancyPrimitive
require_relative 'fancy_primitive' # 0 () ()

def self.main()
    
    s = (DatawireQuarkCore::List.new ::DatawireQuarkCore::List.new([1, 2, 3]))
    ::DatawireQuarkCore.print(s)


    nil
end

if __FILE__ == $0
    ::Quark.fancy_primitive.main()
end

end # module FancyPrimitive
end # module Quark
