module Quark
def self.fancyprim; MODULE_fancyprim; end
module MODULE_fancyprim
def self.main()
    
    s = (DatawireQuarkCore::List.new DatawireQuarkCore::List.new([1, 2, 3]))
    DatawireQuarkCore.print(s)


    nil
end
end # module MODULE_fancyprim
end # module Quark
