module Quark
require "datawire-quark-core"
def self.list_lib; MODULE_list_lib; end
module MODULE_list_lib
def self.test1()
    
    list = ::Quark.DatawireQuarkCore::List.new()
    (list) << (1)
    (list) << (2)
    (list) << (3)
    DatawireQuarkCore.print((list)[0])
    DatawireQuarkCore.print((list)[1])
    DatawireQuarkCore.print((list)[2])


    nil
end

def self.test2()
    
    list = ::Quark.DatawireQuarkCore::List.new()
    (list) << ("one")
    (list) << ("two")
    (list) << ("three")
    DatawireQuarkCore.print((list)[0])
    DatawireQuarkCore.print((list)[1])
    DatawireQuarkCore.print((list)[2])


    nil
end

def self.test3()
    
    list = DatawireQuarkCore::List.new([])
    DatawireQuarkCore.print(list)
    list = DatawireQuarkCore::List.new([1])
    DatawireQuarkCore.print(list)
    list = DatawireQuarkCore::List.new([1, 2, 3])
    DatawireQuarkCore.print(list)


    nil
end

def self.test4()
    
    list = DatawireQuarkCore::List.new([])
    DatawireQuarkCore.print(list)
    list = DatawireQuarkCore::List.new(["one"])
    DatawireQuarkCore.print(list)
    list = DatawireQuarkCore::List.new(["one", "two", "three"])
    DatawireQuarkCore.print(list)


    nil
end

class CLASS_Box < Object
    attr_accessor :contents

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def get()
        
        return @contents

        nil
    end

    def set(contents)
        
        (self).contents = contents

        nil
    end

    def _getClass()
        
        return "Box<builtin.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("contents"))
            return (self).contents
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("contents"))
            (self).contents = value
        end

        nil
    end

    def __init_fields__()
        

        self.contents = nil

        nil
    end


end; def self.Box; CLASS_Box; end

def self.test5()
    
    boxes = DatawireQuarkCore::List.new([])
    (boxes) << (::Quark.list_lib.Box.new())
    (boxes)[0].set(3)
    DatawireQuarkCore.print((boxes)[0].get())
    boxes = DatawireQuarkCore::List.new([::Quark.list_lib.Box.new()])
    DatawireQuarkCore.print((boxes)[0].get())


    nil
end

def self.test6()
    
    matrix = DatawireQuarkCore::List.new([DatawireQuarkCore::List.new([1, 2, 3]), DatawireQuarkCore::List.new([4, 5, 6]), DatawireQuarkCore::List.new([7, 8, 9])])
    DatawireQuarkCore.print(matrix)


    nil
end

def self.sorter()
    
    stuff = DatawireQuarkCore::List.new(["Richard", "Rafi", "Abhay", "Bozzo", "Phil", "Austin", "Janice", "Flynn", "Vladimir"])
    (stuff).sort
    DatawireQuarkCore.print(stuff)


    nil
end

def self.main()
    
    ::Quark.list_lib.test1()
    ::Quark.list_lib.test2()
    ::Quark.list_lib.test3()
    ::Quark.list_lib.test4()
    ::Quark.list_lib.test5()
    ::Quark.list_lib.test6()
    ::Quark.list_lib.sorter()


    nil
end
end # module MODULE_list_lib
end # module Quark
