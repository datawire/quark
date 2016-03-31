module Quark
require "quark"
def self.hello; Hello; end
module Hello
require_relative 'hello' # 0 () ()

def self.main()
    
    ::DatawireQuarkCore.print("Hello World")


    nil
end

if __FILE__ == $0
    ::Quark.hello.main()
end

end # module Hello
end # module Quark
