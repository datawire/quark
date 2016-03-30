module Quark
require "quark"
def self.marshalling; MODULE_marshalling; end
module MODULE_marshalling
require_relative 'm' # 0 () ()
require_relative 'marshalling' # 0 () ()

def self.main()
    
    ::Quark.m.test_marshalling()


    nil
end

if __FILE__ == $0
    ::Quark.marshalling.main()
end

end # module MODULE_marshalling
end # module Quark
