module Quark
require "quark"
def self.package; MODULE_package; end
module MODULE_package
require_relative 'test' # 0 () ()
require_relative 'test/test' # 0 ('test',) ()
require_relative 'package' # 0 () ()

def self.main()
    
    ::Quark.test.go()
    ::Quark.test.test.go()
    t1 = ::Quark.test.Test.new()
    t2 = ::Quark.test.test.Test.new()
    t1.go()
    t2.go()


    nil
end

if __FILE__ == $0
    ::Quark.package.main()
end

end # module MODULE_package
end # module Quark
