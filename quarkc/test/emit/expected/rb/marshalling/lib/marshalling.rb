module Quark
require "quark"
def self.marshalling; Marshalling; end
module Marshalling
require_relative 'm' # 0 () ()
require_relative 'marshalling' # 0 () ()


def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::Quark.m.test_marshalling()


    nil
end

if __FILE__ == $0 then ::Quark.marshalling.call_main() end

end # module Marshalling
end # module Quark
