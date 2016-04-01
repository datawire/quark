module Quark
require "quark"
def self.list; List; end
module List
require_relative 'list' # 0 () ()


def self.test1()
    
    list = ::DatawireQuarkCore::List.new()
    (list) << (1)
    (list) << (2)
    (list) << (3)
    ::DatawireQuarkCore.print((list)[0])
    ::DatawireQuarkCore.print((list)[1])
    ::DatawireQuarkCore.print((list)[2])


    nil
end

def self.test2()
    
    list = ::DatawireQuarkCore::List.new()
    (list) << ("one")
    (list) << ("two")
    (list) << ("three")
    ::DatawireQuarkCore.print((list)[0])
    ::DatawireQuarkCore.print((list)[1])
    ::DatawireQuarkCore.print((list)[2])


    nil
end

def self.test3()
    
    list = ::DatawireQuarkCore::List.new([])
    ::DatawireQuarkCore.print(list)
    list = ::DatawireQuarkCore::List.new([1])
    ::DatawireQuarkCore.print(list)
    list = ::DatawireQuarkCore::List.new([1, 2, 3])
    ::DatawireQuarkCore.print(list)


    nil
end

def self.test4()
    
    list = ::DatawireQuarkCore::List.new([])
    ::DatawireQuarkCore.print(list)
    list = ::DatawireQuarkCore::List.new(["one"])
    ::DatawireQuarkCore.print(list)
    list = ::DatawireQuarkCore::List.new(["one", "two", "three"])
    ::DatawireQuarkCore.print(list)


    nil
end

def self.Box; Box; end
class Box < ::DatawireQuarkCore::QuarkObject
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
        
        return "list.Box<quark.Object>"

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


end

def self.test5()
    
    boxes = ::DatawireQuarkCore::List.new([])
    (boxes) << (::Quark.list.Box.new())
    (boxes)[0].set(3)
    ::DatawireQuarkCore.print((boxes)[0].get())
    boxes = ::DatawireQuarkCore::List.new([::Quark.list.Box.new()])
    ::DatawireQuarkCore.print((boxes)[0].get())


    nil
end

def self.test6()
    
    matrix = ::DatawireQuarkCore::List.new([::DatawireQuarkCore::List.new([1, 2, 3]), ::DatawireQuarkCore::List.new([4, 5, 6]), ::DatawireQuarkCore::List.new([7, 8, 9])])
    ::DatawireQuarkCore.print(matrix)


    nil
end

def self.sorter()
    
    stuff = ::DatawireQuarkCore::List.new(["Richard", "Rafi", "Abhay", "Bozzo", "Phil", "Austin", "Janice", "Flynn", "Vladimir"])
    (stuff).sort!
    ::DatawireQuarkCore.print(stuff)


    nil
end

def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::Quark.list.test1()
    ::Quark.list.test2()
    ::Quark.list.test3()
    ::Quark.list.test4()
    ::Quark.list.test5()
    ::Quark.list.test6()
    ::Quark.list.sorter()


    nil
end

if __FILE__ == $0 then ::Quark.list.call_main() end

end # module List
end # module Quark
