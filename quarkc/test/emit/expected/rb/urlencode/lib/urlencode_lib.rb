module Quark
require "builtin"
def self.urlencode_lib; MODULE_urlencode_lib; end
module MODULE_urlencode_lib
def self.main()
    
    map = ::Hash.new()
    (map)["pi"] = (3.14159)
    ::DatawireQuarkCore.print(::DatawireQuarkCore.urlencode(map))


    nil
end
end # module MODULE_urlencode_lib
end # module Quark
