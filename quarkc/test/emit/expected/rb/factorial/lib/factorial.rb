module Quark
require "quark"
def self.factorial; Factorial; end
module Factorial
require_relative 'factorial' # 0 () ()


def self.factorial(n)
    
    if ((n) == (0))
        return 1
    else
        return (n) * (::Quark.factorial.factorial((n) - (1)))
    end


    nil
end

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(1))
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(2))
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(3))
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(4))
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(5))
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(6))
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(7))
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(8))
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(9))
    ::DatawireQuarkCore.print(::Quark.factorial.factorial(10))


    nil
end

if __FILE__ == $0 then ::Quark.factorial.call_main() end

end # module Factorial
end # module Quark
