module Quark
def self.quark; MODULE_quark; end
module MODULE_quark
def self.reflect; MODULE_reflect; end
module MODULE_reflect
def self.QuarkClass; CLASS_QuarkClass; end
class CLASS_QuarkClass < ::DatawireQuarkCore::QuarkObject
    attr_accessor :id, :name, :parameters, :fields, :methods
    extend ::DatawireQuarkCore::Static

    static classes: -> { {} }
    static VOID: -> { ::Quark.quark.reflect.QuarkClass.new("quark.void") }
    static BOOL: -> { ::Quark.quark.reflect.QuarkClass.new("quark.bool") }
    static INT: -> { ::Quark.quark.reflect.QuarkClass.new("quark.int") }
    static LONG: -> { ::Quark.quark.reflect.QuarkClass.new("quark.long") }
    static FLOAT: -> { ::Quark.quark.reflect.QuarkClass.new("quark.float") }
    static STRING: -> { ::Quark.quark.reflect.QuarkClass.new("quark.String") }



    def initialize(id)
        
        self.__init_fields__
        (self).id = id
        (::Quark.quark.reflect.QuarkClass.classes)[id] = (self)
        (self).name = id

        nil
    end




    def self.get(id)
        
        if (!((::Quark.quark.reflect.QuarkClass.classes).key?(id)))
            ::DatawireQuarkCore.print(((("Cannot find ") + (id)) + (" in ")) + ((::DatawireQuarkCore::List.new((::Quark.quark.reflect.QuarkClass.classes).keys)).to_s))
        end
        return (::Quark.quark.reflect.QuarkClass.classes)[id]

        nil
    end

    def getId()
        
        return @id

        nil
    end

    def getName()
        
        return @name

        nil
    end

    def getParameters()
        
        result = ::DatawireQuarkCore::List.new([])
        idx = 0
        while ((idx) < ((@parameters).size)) do
            (result) << (::Quark.quark.reflect.QuarkClass.get((@parameters)[idx]))
            idx = (idx) + (1)
        end
        return result

        nil
    end

    def construct(args)
        
        return nil

        nil
    end

    def getFields()
        
        return @fields

        nil
    end

    def getField(name)
        
        idx = 0
        while ((idx) < ((@fields).size)) do
            if ((((@fields)[idx]).name) == (name))
                return (@fields)[idx]
            end
            idx = (idx) + (1)
        end
        return nil

        nil
    end

    def getMethods()
        
        return @methods

        nil
    end

    def getMethod(name)
        
        idx = 0
        while ((idx) < ((@methods).size)) do
            if ((((@methods)[idx]).name) == (name))
                return (@methods)[idx]
            end
            idx = (idx) + (1)
        end
        return nil

        nil
    end

    def _getClass()
        
        return "quark.reflect.Class"

        nil
    end

    def _getField(name)
        
        if ((name) == ("classes"))
            return ::Quark.quark.reflect.QuarkClass.classes
        end
        if ((name) == ("VOID"))
            return ::Quark.quark.reflect.QuarkClass.VOID
        end
        if ((name) == ("BOOL"))
            return ::Quark.quark.reflect.QuarkClass.BOOL
        end
        if ((name) == ("INT"))
            return ::Quark.quark.reflect.QuarkClass.INT
        end
        if ((name) == ("LONG"))
            return ::Quark.quark.reflect.QuarkClass.LONG
        end
        if ((name) == ("FLOAT"))
            return ::Quark.quark.reflect.QuarkClass.FLOAT
        end
        if ((name) == ("STRING"))
            return ::Quark.quark.reflect.QuarkClass.STRING
        end
        if ((name) == ("id"))
            return (self).id
        end
        if ((name) == ("name"))
            return (self).name
        end
        if ((name) == ("parameters"))
            return (self).parameters
        end
        if ((name) == ("fields"))
            return (self).fields
        end
        if ((name) == ("methods"))
            return (self).methods
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("classes"))
            ::Quark.quark.reflect.QuarkClass.classes = value
        end
        if ((name) == ("VOID"))
            ::Quark.quark.reflect.QuarkClass.VOID = value
        end
        if ((name) == ("BOOL"))
            ::Quark.quark.reflect.QuarkClass.BOOL = value
        end
        if ((name) == ("INT"))
            ::Quark.quark.reflect.QuarkClass.INT = value
        end
        if ((name) == ("LONG"))
            ::Quark.quark.reflect.QuarkClass.LONG = value
        end
        if ((name) == ("FLOAT"))
            ::Quark.quark.reflect.QuarkClass.FLOAT = value
        end
        if ((name) == ("STRING"))
            ::Quark.quark.reflect.QuarkClass.STRING = value
        end
        if ((name) == ("id"))
            (self).id = value
        end
        if ((name) == ("name"))
            (self).name = value
        end
        if ((name) == ("parameters"))
            (self).parameters = value
        end
        if ((name) == ("fields"))
            (self).fields = value
        end
        if ((name) == ("methods"))
            (self).methods = value
        end

        nil
    end

    def __init_fields__()
        

        self.id = nil
        self.name = nil
        self.parameters = ::DatawireQuarkCore::List.new([])
        self.fields = ::DatawireQuarkCore::List.new([])
        self.methods = ::DatawireQuarkCore::List.new([])

        nil
    end


end
CLASS_QuarkClass.unlazy_statics

def self.Field; CLASS_Field; end
class CLASS_Field < ::DatawireQuarkCore::QuarkObject
    attr_accessor :type, :name



    def initialize(type, name)
        
        self.__init_fields__
        (self).type = type
        (self).name = name

        nil
    end




    def getType()
        
        return ::Quark.quark.reflect.QuarkClass.get(@type)

        nil
    end

    def getName()
        
        return @name

        nil
    end

    def _getClass()
        
        return "quark.reflect.Field"

        nil
    end

    def _getField(name)
        
        if ((name) == ("type"))
            return (self).type
        end
        if ((name) == ("name"))
            return (self).name
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("type"))
            (self).type = value
        end
        if ((name) == ("name"))
            (self).name = value
        end

        nil
    end

    def __init_fields__()
        

        self.type = nil
        self.name = nil

        nil
    end


end

def self.Method; CLASS_Method; end
class CLASS_Method < ::DatawireQuarkCore::QuarkObject
    attr_accessor :type, :name, :parameters



    def initialize(type, name, parameters)
        
        self.__init_fields__
        (self).type = type
        (self).name = name
        (self).parameters = parameters

        nil
    end




    def getType()
        
        return ::Quark.quark.reflect.QuarkClass.get(@type)

        nil
    end

    def getName()
        
        return @name

        nil
    end

    def getParameters()
        
        result = ::DatawireQuarkCore::List.new([])
        idx = 0
        while ((idx) < ((@parameters).size)) do
            (result) << (::Quark.quark.reflect.QuarkClass.get((@parameters)[idx]))
            idx = (idx) + (1)
        end
        return result

        nil
    end

    def invoke(object, args)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        self.type = nil
        self.name = nil
        self.parameters = nil

        nil
    end


end
end # module MODULE_reflect
end # module MODULE_quark
end # module Quark
