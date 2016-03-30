module Quark
require "quark"
def self.extending_primitives; MODULE_extending_primitives; end
module MODULE_extending_primitives
require_relative 'pkg' # 0 () ()
require_relative 'extending_primitives' # 0 () ()

def self.main()
    
    c = ::Quark.pkg.C.new()
    c.event1()
    c.event2()
    c.run()


    nil
end

if __FILE__ == $0
    ::Quark.extending_primitives.main()
end

end # module MODULE_extending_primitives
end # module Quark
