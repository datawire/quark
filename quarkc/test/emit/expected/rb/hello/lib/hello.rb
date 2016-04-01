module Quark
require "quark"
def self.hello; Hello; end
module Hello
require_relative 'hello' # 0 () ()

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::DatawireQuarkCore.print("Hello World")


    nil
end

if __FILE__ == $0 then ::Quark.hello.call_main() end

end # module Hello
end # module Quark
