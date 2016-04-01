module Quark
require "quark"
def self.break_and_continue; BreakAndContinue; end
module BreakAndContinue
require_relative 'break_and_continue' # 0 () ()

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
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

if __FILE__ == $0 then ::Quark.break_and_continue.call_main() end

end # module BreakAndContinue
end # module Quark
