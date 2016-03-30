module Quark
require "quark"
def self.multiple_packages; MODULE_multiple_packages; end
module MODULE_multiple_packages
require_relative 'p1/p2' # 0 ('p1',) ()
require_relative 'p1' # 0 () ()
require_relative 'multiple_packages' # 0 () ()

def self.main()
    
    ::Quark.p1.p2.a()
    ::Quark.p1.p2.b()
    ::Quark.p1.c()
    ::Quark.p1.d()


    nil
end

if __FILE__ == $0
    ::Quark.multiple_packages.main()
end

end # module MODULE_multiple_packages
end # module Quark
