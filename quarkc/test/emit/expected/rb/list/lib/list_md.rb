module Quark
def self.list_md; ListMd; end
module ListMd
require 'quark' # .../reflect
# for ('list_md',): require_relative 'list' # 0 () ()


def self.list_Box_quark_int__get_Method; ListBoxQuarkIntGetMethod; end
class ListBoxQuarkIntGetMethod < ::Quark.quark.reflect.Method



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

def self.list_Box_quark_int__set_Method; ListBoxQuarkIntSetMethod; end
class ListBoxQuarkIntSetMethod < ::Quark.quark.reflect.Method



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

def self.list_Box_quark_int_; ListBoxQuarkInt; end
class ListBoxQuarkInt < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.list_md.list_Box_quark_int_.new() }



    def initialize()
        
        super("list.Box<quark.int>")
        (self).name = "list.Box"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.int"])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.int", "contents")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.list_md.list_Box_quark_int__get_Method.new(), ::Quark.list_md.list_Box_quark_int__set_Method.new()])

        nil
    end




    def construct(args)
        
        return ::Quark.list.Box.new()

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
ListBoxQuarkInt.unlazy_statics


def self.quark_List_quark_int_; QuarkListQuarkInt; end
class QuarkListQuarkInt < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.list_md.quark_List_quark_int_.new() }



    def initialize()
        
        super("quark.List<quark.int>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.int"])
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
QuarkListQuarkInt.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.list_md.quark_List_quark_String_.new() }



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


def self.quark_List_list_Box_quark_int__; QuarkListListBoxQuarkInt; end
class QuarkListListBoxQuarkInt < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.list_md.quark_List_list_Box_quark_int__.new() }



    def initialize()
        
        super("quark.List<list.Box<quark.int>>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["list.Box<quark.int>"])
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
QuarkListListBoxQuarkInt.unlazy_statics


def self.quark_List_quark_List_quark_int__; QuarkListQuarkListQuarkInt; end
class QuarkListQuarkListQuarkInt < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.list_md.quark_List_quark_List_quark_int__.new() }



    def initialize()
        
        super("quark.List<quark.List<quark.int>>")
        (self).name = "quark.List"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.List<quark.int>"])
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
QuarkListQuarkListQuarkInt.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject



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
end # module ListMd
end # module Quark
