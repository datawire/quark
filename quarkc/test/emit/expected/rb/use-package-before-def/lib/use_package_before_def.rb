module Quark
require "quark"
def self.use_package_before_def; UsePackageBeforeDef; end
module UsePackageBeforeDef
require_relative 'test_' # 0 () ()
require_relative 'use_package_before_def' # 0 () ()

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::Quark.test_.go()


    nil
end

if __FILE__ == $0 then ::Quark.use_package_before_def.call_main() end

end # module UsePackageBeforeDef
end # module Quark
