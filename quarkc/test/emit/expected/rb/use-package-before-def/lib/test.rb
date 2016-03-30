module Quark
require "quark"
def self.test; MODULE_test; end
module MODULE_test
def self.go()
    
    ::DatawireQuarkCore.print("GO!")


    nil
end
end # module MODULE_test
end # module Quark
