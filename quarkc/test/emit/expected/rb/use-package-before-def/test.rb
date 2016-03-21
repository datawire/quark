module Quark
require "datawire-quark-core"
def self.test; MODULE_test; end
module MODULE_test
def self.main()
    
    ::Quark.test.go()


    nil
end

def self.go()
    
    DatawireQuarkCore.print("GO!")


    nil
end
end # module MODULE_test
end # module Quark
