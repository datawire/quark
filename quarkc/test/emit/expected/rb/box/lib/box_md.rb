module Quark
def self.box_md; MODULE_box_md; end
module MODULE_box_md
require 'quark' # .../reflect
# for ('box_md',): require_relative 'box' # 0 () ()

def self.box_Box_quark_Object__set_Method; CLASS_box_Box_quark_Object__set_Method; end
class CLASS_box_Box_quark_Object__set_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "set", ::DatawireQuarkCore::List.new(["quark.Object"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.set((args)[0])
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

def self.box_Box_quark_Object__get_Method; CLASS_box_Box_quark_Object__get_Method; end
class CLASS_box_Box_quark_Object__get_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.Object", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.get()

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

def self.box_Box_quark_Object_; CLASS_box_Box_quark_Object_; end
class CLASS_box_Box_quark_Object_ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.box_md.box_Box_quark_Object_.new() }



    def initialize()
        
        super("box.Box<quark.Object>")
        (self).name = "box.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Object", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.box_md.box_Box_quark_Object__set_Method.new(), ::Quark.box_md.box_Box_quark_Object__get_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.box.Box.new()

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
CLASS_box_Box_quark_Object_.unlazy_statics

def self.box_Box_quark_int__set_Method; CLASS_box_Box_quark_int__set_Method; end
class CLASS_box_Box_quark_int__set_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "set", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.set((args)[0])
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

def self.box_Box_quark_int__get_Method; CLASS_box_Box_quark_int__get_Method; end
class CLASS_box_Box_quark_int__get_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.int", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.get()

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

def self.box_Box_quark_int_; CLASS_box_Box_quark_int_; end
class CLASS_box_Box_quark_int_ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.box_md.box_Box_quark_int_.new() }



    def initialize()
        
        super("box.Box<quark.int>")
        (self).name = "box.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.int"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.box_md.box_Box_quark_int__set_Method.new(), ::Quark.box_md.box_Box_quark_int__get_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.box.Box.new()

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
CLASS_box_Box_quark_int_.unlazy_statics

def self.box_Box_quark_String__set_Method; CLASS_box_Box_quark_String__set_Method; end
class CLASS_box_Box_quark_String__set_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "set", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.set((args)[0])
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

def self.box_Box_quark_String__get_Method; CLASS_box_Box_quark_String__get_Method; end
class CLASS_box_Box_quark_String__get_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.get()

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

def self.box_Box_quark_String_; CLASS_box_Box_quark_String_; end
class CLASS_box_Box_quark_String_ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.box_md.box_Box_quark_String_.new() }



    def initialize()
        
        super("box.Box<quark.String>")
        (self).name = "box.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.box_md.box_Box_quark_String__set_Method.new(), ::Quark.box_md.box_Box_quark_String__get_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.box.Box.new()

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
CLASS_box_Box_quark_String_.unlazy_statics

def self.box_Box_box_Box_quark_int___set_Method; CLASS_box_Box_box_Box_quark_int___set_Method; end
class CLASS_box_Box_box_Box_quark_int___set_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "set", ::DatawireQuarkCore::List.new(["box.Box<quark.int>"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.set((args)[0])
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

def self.box_Box_box_Box_quark_int___get_Method; CLASS_box_Box_box_Box_quark_int___get_Method; end
class CLASS_box_Box_box_Box_quark_int___get_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("box.Box<quark.int>", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.get()

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

def self.box_Box_box_Box_quark_int__; CLASS_box_Box_box_Box_quark_int__; end
class CLASS_box_Box_box_Box_quark_int__ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.box_md.box_Box_box_Box_quark_int__.new() }



    def initialize()
        
        super("box.Box<box.Box<quark.int>>")
        (self).name = "box.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["box.Box<quark.int>"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("box.Box<quark.int>", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.box_md.box_Box_box_Box_quark_int___set_Method.new(), ::Quark.box_md.box_Box_box_Box_quark_int___get_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.box.Box.new()

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
CLASS_box_Box_box_Box_quark_int__.unlazy_statics

def self.box_Crate_quark_int__set_Method; CLASS_box_Crate_quark_int__set_Method; end
class CLASS_box_Crate_quark_int__set_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "set", ::DatawireQuarkCore::List.new(["quark.int"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.set((args)[0])
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

def self.box_Crate_quark_int__get_Method; CLASS_box_Crate_quark_int__get_Method; end
class CLASS_box_Crate_quark_int__get_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.int", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.get()

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

def self.box_Crate_quark_int_; CLASS_box_Crate_quark_int_; end
class CLASS_box_Crate_quark_int_ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.box_md.box_Crate_quark_int_.new() }



    def initialize()
        
        super("box.Crate<quark.int>")
        (self).name = "box.Crate"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.int"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("box.Box<quark.Object>", "box"), ::Quark.quark.reflect.Field.new("box.Box<quark.int>", "ibox")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.box_md.box_Crate_quark_int__set_Method.new(), ::Quark.box_md.box_Crate_quark_int__get_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.box.Crate.new()

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
CLASS_box_Crate_quark_int_.unlazy_statics

def self.box_Crate_quark_String__set_Method; CLASS_box_Crate_quark_String__set_Method; end
class CLASS_box_Crate_quark_String__set_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "set", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        obj.set((args)[0])
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

def self.box_Crate_quark_String__get_Method; CLASS_box_Crate_quark_String__get_Method; end
class CLASS_box_Crate_quark_String__get_Method < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.String", "get", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = object
        return obj.get()

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

def self.box_Crate_quark_String_; CLASS_box_Crate_quark_String_; end
class CLASS_box_Crate_quark_String_ < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.box_md.box_Crate_quark_String_.new() }



    def initialize()
        
        super("box.Crate<quark.String>")
        (self).name = "box.Crate"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("box.Box<quark.Object>", "box"), ::Quark.quark.reflect.Field.new("box.Box<quark.int>", "ibox")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.box_md.box_Crate_quark_String__set_Method.new(), ::Quark.box_md.box_Crate_quark_String__get_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.box.Crate.new()

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
CLASS_box_Crate_quark_String_.unlazy_statics

def self.box_Sack; CLASS_box_Sack; end
class CLASS_box_Sack < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.box_md.box_Sack.new() }



    def initialize()
        
        super("box.Sack")
        (self).name = "box.Sack"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("box.Box<quark.int>", "ints")])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.box.Sack.new()

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
CLASS_box_Sack.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static box_Box_quark_Object__md: -> { ::Quark.box_md.box_Box_quark_Object_.singleton }
    static box_Box_quark_int__md: -> { ::Quark.box_md.box_Box_quark_int_.singleton }
    static box_Sack_md: -> { ::Quark.box_md.box_Sack.singleton }



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
end # module MODULE_box_md
end # module Quark
