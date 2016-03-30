module Quark
require "quark"
def self.modulo; MODULE_modulo; end
module MODULE_modulo
require_relative 'modulo' # 0 () ()

def self.test_modulo(a, b)
    
    ::DatawireQuarkCore.print((((((a).to_s) + (" % ")) + ((b).to_s)) + (" = ")) + (((a) % (b)).to_s))


    nil
end

def self.main()
    
    ::Quark.modulo.test_modulo(4, 3)
    ::Quark.modulo.test_modulo(4, -(3))
    ::Quark.modulo.test_modulo(-(4), 3)
    ::Quark.modulo.test_modulo(-(4), -(3))


    nil
end

if __FILE__ == $0
    ::Quark.modulo.main()
end

end # module MODULE_modulo
end # module Quark
