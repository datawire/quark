module Quark
def self.matrix_md; MatrixMd; end
module MatrixMd
require 'quark' # .../reflect
# for ('matrix_md',): require_relative 'matrix' # 0 () ()

def self.matrix_Matrix_quark_int____get___Method; MatrixMatrixQuarkIntGetMethod; end
class MatrixMatrixQuarkIntGetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.int", "__get__", ::DatawireQuarkCore::List.new(["quark.int", "quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.__get__((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end

def self.matrix_Matrix_quark_int____set___Method; MatrixMatrixQuarkIntSetMethod; end
class MatrixMatrixQuarkIntSetMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "__set__", ::DatawireQuarkCore::List.new(["quark.int", "quark.int", "quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.__set__((args)[0], (args)[1], (args)[2])
        return nil

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end

def self.matrix_Matrix_quark_int_; MatrixMatrixQuarkInt; end
class MatrixMatrixQuarkInt < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.matrix_md.matrix_Matrix_quark_int_.new() }



    def initialize()
        
        super("matrix.Matrix<quark.int>")
        (self).name = "matrix.Matrix"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.int"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "width"), ::Quark.quark.reflect.Field.new("quark.int", "height"), ::Quark.quark.reflect.Field.new("quark.List<quark.List<quark.Object>>", "columns")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.matrix_md.matrix_Matrix_quark_int____get___Method.new(), ::Quark.matrix_md.matrix_Matrix_quark_int____set___Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.matrix.Matrix.new((args)[0], (args)[1])

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
MatrixMatrixQuarkInt.unlazy_statics

def self.quark_List_quark_List_quark_Object__; QuarkListQuarkListQuarkObject; end
class QuarkListQuarkListQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.matrix_md.quark_List_quark_List_quark_Object__.new() }



    def initialize()
        
        super("quark.List<quark.List<quark.Object>>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.List<quark.Object>"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
QuarkListQuarkListQuarkObject.unlazy_statics

def self.quark_List_quark_Object_; QuarkListQuarkObject; end
class QuarkListQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.matrix_md.quark_List_quark_Object_.new() }



    def initialize()
        
        super("quark.List<quark.Object>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::DatawireQuarkCore::List.new()

        nil
    end

    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
QuarkListQuarkObject.unlazy_statics

def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_List_quark_List_quark_Object___md: -> { ::Quark.matrix_md.quark_List_quark_List_quark_Object__.singleton }
    static quark_List_quark_Object__md: -> { ::Quark.matrix_md.quark_List_quark_Object_.singleton }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return nil

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Root.unlazy_statics
end # module MatrixMd
end # module Quark
