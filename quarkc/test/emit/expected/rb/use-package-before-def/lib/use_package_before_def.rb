module Quark
require "quark"
def self.use_package_before_def; UsePackageBeforeDef; end
module UsePackageBeforeDef
require_relative 'test' # 0 () ()
require_relative 'use_package_before_def' # 0 () ()

def self.main()
    
    ::Quark.test.go()


    nil
end

if __FILE__ == $0
    ::Quark.use_package_before_def.main()
end

end # module UsePackageBeforeDef
end # module Quark
