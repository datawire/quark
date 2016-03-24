module Quark
require "quark"
def self.void_return; MODULE_void_return; end
module MODULE_void_return
def self.foo()
    
    return


    nil
end
end # module MODULE_void_return
end # module Quark
