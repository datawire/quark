module Quark
require "datawire-quark-core"
def self.t2; MODULE_t2; end
module MODULE_t2
require_relative "testlib.rb"

def self.test()
    
    # import testlib;

    f = ::Quark.testlib.foo()
    DatawireQuarkCore.print(f)


    nil
end
end # module MODULE_t2
end # module Quark
