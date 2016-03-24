module Quark
require "builtin"
def self.factorial_lib; MODULE_factorial_lib; end
module MODULE_factorial_lib
def self.factorial(n)
    
    if ((n) == (0))
        return 1
    else
        return (n) * (::Quark.factorial_lib.factorial((n) - (1)))
    end


    nil
end

def self.main()
    
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(1))
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(2))
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(3))
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(4))
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(5))
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(6))
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(7))
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(8))
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(9))
    ::DatawireQuarkCore.print(::Quark.factorial_lib.factorial(10))


    nil
end
end # module MODULE_factorial_lib
end # module Quark
