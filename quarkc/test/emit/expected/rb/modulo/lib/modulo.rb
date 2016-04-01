module Quark
require "quark"
def self.modulo; Modulo; end
module Modulo
require_relative 'modulo' # 0 () ()


def self.test_modulo(a, b)
    
    ::DatawireQuarkCore.print((((((a).to_s) + (" % ")) + ((b).to_s)) + (" = ")) + (((a) % (b)).to_s))


    nil
end

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::Quark.modulo.test_modulo(4, 3)
    ::Quark.modulo.test_modulo(4, -(3))
    ::Quark.modulo.test_modulo(-(4), 3)
    ::Quark.modulo.test_modulo(-(4), -(3))


    nil
end

if __FILE__ == $0 then ::Quark.modulo.call_main() end

end # module Modulo
end # module Quark
