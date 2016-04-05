module Quark
def self.box_md; BoxMd; end
module BoxMd
require 'quark' # .../reflect
# for ('box_md',): require_relative 'box' # 0 () ()


def self.box_Box_quark_Object__set_Method; BoxBoxQuarkObjectSetMethod; end
class BoxBoxQuarkObjectSetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Box_quark_Object__get_Method; BoxBoxQuarkObjectGetMethod; end
class BoxBoxQuarkObjectGetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Box_quark_Object_; BoxBoxQuarkObject; end
class BoxBoxQuarkObject < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
BoxBoxQuarkObject.unlazy_statics


def self.box_Box_quark_int__set_Method; BoxBoxQuarkIntSetMethod; end
class BoxBoxQuarkIntSetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Box_quark_int__get_Method; BoxBoxQuarkIntGetMethod; end
class BoxBoxQuarkIntGetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Box_quark_int_; BoxBoxQuarkInt; end
class BoxBoxQuarkInt < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
BoxBoxQuarkInt.unlazy_statics


def self.box_Box_quark_String__set_Method; BoxBoxQuarkStringSetMethod; end
class BoxBoxQuarkStringSetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Box_quark_String__get_Method; BoxBoxQuarkStringGetMethod; end
class BoxBoxQuarkStringGetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Box_quark_String_; BoxBoxQuarkString; end
class BoxBoxQuarkString < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
BoxBoxQuarkString.unlazy_statics


def self.box_Box_box_Box_quark_int___set_Method; BoxBoxBoxBoxQuarkIntSetMethod; end
class BoxBoxBoxBoxQuarkIntSetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Box_box_Box_quark_int___get_Method; BoxBoxBoxBoxQuarkIntGetMethod; end
class BoxBoxBoxBoxQuarkIntGetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Box_box_Box_quark_int__; BoxBoxBoxBoxQuarkInt; end
class BoxBoxBoxBoxQuarkInt < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
BoxBoxBoxBoxQuarkInt.unlazy_statics


def self.box_Crate_quark_int__set_Method; BoxCrateQuarkIntSetMethod; end
class BoxCrateQuarkIntSetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Crate_quark_int__get_Method; BoxCrateQuarkIntGetMethod; end
class BoxCrateQuarkIntGetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Crate_quark_int_; BoxCrateQuarkInt; end
class BoxCrateQuarkInt < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
BoxCrateQuarkInt.unlazy_statics


def self.box_Crate_quark_String__set_Method; BoxCrateQuarkStringSetMethod; end
class BoxCrateQuarkStringSetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Crate_quark_String__get_Method; BoxCrateQuarkStringGetMethod; end
class BoxCrateQuarkStringGetMethod < ::Quark.quark.reflect.Method



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
        
        super

        nil
    end


end

def self.box_Crate_quark_String_; BoxCrateQuarkString; end
class BoxCrateQuarkString < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
BoxCrateQuarkString.unlazy_statics


def self.box_Sack; BoxSack; end
class BoxSack < ::Quark.quark.reflect.QuarkClass
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
        
        super

        nil
    end


end
BoxSack.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.box_md.quark_List_quark_String_.new() }



    def initialize()
        
        super("quark.List<quark.String>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String"])
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
        
        super

        nil
    end


end
QuarkListQuarkString.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
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
Root.unlazy_statics
end # module BoxMd
end # module Quark
