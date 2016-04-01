module Quark
require "quark"
def self.extending_primitives; ExtendingPrimitives; end
module ExtendingPrimitives
require_relative 'pkg' # 0 () ()
require_relative 'extending_primitives' # 0 () ()


def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    c = ::Quark.pkg.C.new()
    c.event1()
    c.event2()
    c.run()


    nil
end

if __FILE__ == $0 then ::Quark.extending_primitives.call_main() end

end # module ExtendingPrimitives
end # module Quark
