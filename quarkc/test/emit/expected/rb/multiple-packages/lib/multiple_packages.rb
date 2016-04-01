module Quark
require "quark"
def self.multiple_packages; MultiplePackages; end
module MultiplePackages
require_relative 'p1/p2' # 0 ('p1',) ()
require_relative 'p1' # 0 () ()
require_relative 'multiple_packages' # 0 () ()

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::Quark.p1.p2.a()
    ::Quark.p1.p2.b()
    ::Quark.p1.c()
    ::Quark.p1.d()


    nil
end

if __FILE__ == $0 then ::Quark.multiple_packages.call_main() end

end # module MultiplePackages
end # module Quark
