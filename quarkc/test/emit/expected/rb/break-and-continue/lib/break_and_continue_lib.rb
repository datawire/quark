module Quark
require "builtin"
def self.break_and_continue_lib; MODULE_break_and_continue_lib; end
module MODULE_break_and_continue_lib
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
end # module MODULE_break_and_continue_lib
end # module Quark
