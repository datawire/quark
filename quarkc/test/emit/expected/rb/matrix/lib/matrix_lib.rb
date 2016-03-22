module Quark
require "datawire-quark-core"
def self.matrix_lib; MODULE_matrix_lib; end
module MODULE_matrix_lib
def self.Matrix; CLASS_Matrix; end
class CLASS_Matrix < Object
    attr_accessor :width, :height, :columns

    
    def initialize(width, height)
        
        self.__init_fields__
        (self).width = width
        (self).height = height
        @columns = DatawireQuarkCore::List.new([])
        while (((@columns).size) < (width)) do
            column = DatawireQuarkCore::List.new([])
            while (((column).size) < (height)) do
                (column) << (nil)
            end
            (@columns) << (column)
        end

        nil
    end



    
    def __get__(i, j)
        
        return ((@columns)[i])[j]

        nil
    end

    def __set__(i, j, value)
        
        ((@columns)[i])[j] = (value)

        nil
    end

    def _getClass()
        
        return "Matrix<builtin.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("width"))
            return (self).width
        end
        if ((name) == ("height"))
            return (self).height
        end
        if ((name) == ("columns"))
            return (self).columns
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("width"))
            (self).width = value
        end
        if ((name) == ("height"))
            (self).height = value
        end
        if ((name) == ("columns"))
            (self).columns = value
        end

        nil
    end

    def __init_fields__()
        

        self.width = nil
        self.height = nil
        self.columns = nil

        nil
    end


end

def self.main()
    
    matrix = ::Quark.matrix_lib.Matrix.new(3, 3)
    matrix.__set__(2, 2, 123)
    DatawireQuarkCore.print(matrix.__get__(2, 2))


    nil
end
end # module MODULE_matrix_lib
end # module Quark
