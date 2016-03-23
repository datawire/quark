module Quark
def self.use_lib; MODULE_use_lib; end
module MODULE_use_lib
require 'testlib' 
require 't2' 

def self.main()
    
    DatawireQuarkCore.print(::Quark.testlib.test())
    DatawireQuarkCore.print(::Quark.testlib.foo())
    DatawireQuarkCore.print(::Quark.testlib.foo())
    ::Quark.t2.test()
    DatawireQuarkCore.print(::Quark.use_lib.qux())


    nil
end

def self.qux()
    
    return "moo"


    nil
end
end # module MODULE_use_lib
end # module Quark
