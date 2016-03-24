module Quark
require "quark"
def self.use_package_before_def; MODULE_use_package_before_def; end
module MODULE_use_package_before_def
require_relative 'test' # 0 () ()
require_relative 'use_package_before_def' # 0 () ()

def self.main()
    
    ::Quark.test.go()


    nil
end

if __FILE__ == $0
    ::Quark.use_package_before_def.main()
end

end # module MODULE_use_package_before_def
end # module Quark
