module Quark
require "quark"
def self.defaulted_methods; DefaultedMethods; end
module DefaultedMethods
require_relative 'pkg' # 0 () ()
require_relative 'defaulted_methods' # 0 () ()

def self.main()
    
    t1 = ::Quark.pkg.T1.new()
    t1.foo()
    t1.bar()
    ::DatawireQuarkCore.print("===")
    t2 = ::Quark.pkg.T2.new()
    t2.foo()
    t2.bar()
    ::DatawireQuarkCore.print("===")
    t3 = ::Quark.pkg.T3.new()
    t3.foo()
    t3.bar()
    ::DatawireQuarkCore.print("===")
    t4 = ::Quark.pkg.T4.new()
    t4.foo()
    t4.bar()
    ::DatawireQuarkCore.print("===")
    t5 = ::Quark.pkg.T5.new()
    t5.foo()
    t5.bar()


    nil
end

if __FILE__ == $0
    ::Quark.defaulted_methods.main()
end

end # module DefaultedMethods
end # module Quark
