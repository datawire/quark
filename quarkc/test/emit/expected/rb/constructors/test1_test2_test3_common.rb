module Quark
require "datawire-quark-core"
def self.test1_test2_test3_common; MODULE_test1_test2_test3_common; end
module MODULE_test1_test2_test3_common
require_relative "test1.rb"
require_relative "test2.rb"
require_relative "test3.rb"

def self.main()
    
    ::Quark.test1.go()
    ::Quark.test2.go()
    ::Quark.test3.go()


    nil
end
end # module MODULE_test1_test2_test3_common
end # module Quark
