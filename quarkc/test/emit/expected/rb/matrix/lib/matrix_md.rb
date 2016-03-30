module Quark
def self.matrix_md; MODULE_matrix_md; end
module MODULE_matrix_md
require 'quark' # .../reflect
# for ('matrix_md',): require_relative 'matrix' # 0 () ()

def self.matrix_Matrix_quark_int____get___Method; CLASS_matrix_Matrix_quark_int____get___Method; end
class CLASS_matrix_Matrix_quark_int____get___Method < ::Quark.quark.reflect.Method



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

def self.matrix_Matrix_quark_int____set___Method; CLASS_matrix_Matrix_quark_int____set___Method; end
class CLASS_matrix_Matrix_quark_int____set___Method < ::Quark.quark.reflect.Method



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

def self.matrix_Matrix_quark_int_; CLASS_matrix_Matrix_quark_int_; end
class CLASS_matrix_Matrix_quark_int_ < ::Quark.quark.reflect.QuarkClass
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
CLASS_matrix_Matrix_quark_int_.unlazy_statics

def self.quark_List_quark_List_quark_Object__; CLASS_quark_List_quark_List_quark_Object__; end
class CLASS_quark_List_quark_List_quark_Object__ < ::Quark.quark.reflect.QuarkClass
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
CLASS_quark_List_quark_List_quark_Object__.unlazy_statics

def self.quark_List_quark_Object_; CLASS_quark_List_quark_Object_; end
class CLASS_quark_List_quark_Object_ < ::Quark.quark.reflect.QuarkClass
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
CLASS_quark_List_quark_Object_.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
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
CLASS_Root.unlazy_statics
end # module MODULE_matrix_md
end # module Quark
