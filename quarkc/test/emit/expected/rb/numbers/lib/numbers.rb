module Quark
require "quark"
def self.numbers; Numbers; end
module Numbers
require_relative 'numbers' # 0 () ()


def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    a = 2
    b = 2
    ::DatawireQuarkCore.print(((a) + (b)).to_s)


    nil
end

if __FILE__ == $0 then ::Quark.numbers.call_main() end

end # module Numbers
end # module Quark
