module Quark
require "quark"
def self.use_class_before_def; UseClassBeforeDef; end
module UseClassBeforeDef
require_relative 'pkg' # 0 () ()
require_relative 'use_class_before_def' # 0 () ()

def self.main()
    
    bar = ::Quark.pkg.Bar.new()
    bar.go()


    nil
end

if __FILE__ == $0
    ::Quark.use_class_before_def.main()
end

end # module UseClassBeforeDef
end # module Quark
