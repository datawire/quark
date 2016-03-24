module Quark
require "builtin"
def self.test1_test2_test3_common; MODULE_test1_test2_test3_common; end
module MODULE_test1_test2_test3_common
require_relative 'test1' # 0 () ()
require_relative 'test2' # 0 () ()
require_relative 'test3' # 0 () ()

def self.main()
    
    ::Quark.test1.go()
    ::Quark.test2.go()
    ::Quark.test3.go()


    nil
end
end # module MODULE_test1_test2_test3_common
end # module Quark
