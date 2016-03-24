module Quark
require "quark"
def self.urlencode; MODULE_urlencode; end
module MODULE_urlencode
require_relative 'urlencode' # 0 () ()

def self.main()
    
    map = ::Hash.new()
    (map)["pi"] = (3.14159)
    ::DatawireQuarkCore.print(::DatawireQuarkCore.urlencode(map))


    nil
end

if __FILE__ == $0
    ::Quark.urlencode.main()
end

end # module MODULE_urlencode
end # module Quark
