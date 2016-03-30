module Quark
require "quark"
def self.break_and_continue; MODULE_break_and_continue; end
module MODULE_break_and_continue
require_relative 'break_and_continue' # 0 () ()

def self.main()
    
    stuff = ::DatawireQuarkCore::List.new(["one", "two", "three", "four"])
    idx = 0
    while (true) do
        s = (stuff)[idx]
        if ((s) == ("three"))
            ::DatawireQuarkCore.print("breaking")
            break
        end
        ::DatawireQuarkCore.print("not breaking")
        idx = (idx) + (1)
    end
    idx = 0
    loop = true
    while (loop) do
        s2 = (stuff)[idx]
        if ((s2) != ("three"))
            idx = (idx) + (1)
            ::DatawireQuarkCore.print("continuing")
            next
        end
        ::DatawireQuarkCore.print("not continuing")
        loop = false
    end


    nil
end

if __FILE__ == $0
    ::Quark.break_and_continue.main()
end

end # module MODULE_break_and_continue
end # module Quark
