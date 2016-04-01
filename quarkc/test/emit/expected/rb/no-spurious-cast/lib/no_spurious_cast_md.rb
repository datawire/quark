module Quark
def self.no_spurious_cast_md; NoSpuriousCastMd; end
module NoSpuriousCastMd
require 'quark' # .../reflect
# for ('no_spurious_cast_md',): require_relative 'no_spurious_cast' # 0 () ()


def self.no_spurious_cast_A; NoSpuriousCastA; end
class NoSpuriousCastA < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.no_spurious_cast_md.no_spurious_cast_A.new() }



    def initialize()
        
        super("no_spurious_cast.A")
        (self).name = "no_spurious_cast.A"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.no_spurious_cast.A.new()

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
NoSpuriousCastA.unlazy_statics


def self.no_spurious_cast_B; NoSpuriousCastB; end
class NoSpuriousCastB < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.no_spurious_cast_md.no_spurious_cast_B.new() }



    def initialize()
        
        super("no_spurious_cast.B")
        (self).name = "no_spurious_cast.B"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.no_spurious_cast.B.new()

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
NoSpuriousCastB.unlazy_statics


def self.no_spurious_cast_X_quark_int_; NoSpuriousCastXQuarkInt; end
class NoSpuriousCastXQuarkInt < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.no_spurious_cast_md.no_spurious_cast_X_quark_int_.new() }



    def initialize()
        
        super("no_spurious_cast.X<quark.int>")
        (self).name = "no_spurious_cast.X"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.int"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.no_spurious_cast.X.new()

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
NoSpuriousCastXQuarkInt.unlazy_statics


def self.no_spurious_cast_Y; NoSpuriousCastY; end
class NoSpuriousCastY < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.no_spurious_cast_md.no_spurious_cast_Y.new() }



    def initialize()
        
        super("no_spurious_cast.Y")
        (self).name = "no_spurious_cast.Y"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])

        nil
    end




    def construct(args)
        
        return ::Quark.no_spurious_cast.Y.new()

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
NoSpuriousCastY.unlazy_statics


def self.quark_List_quark_String_; QuarkListQuarkString; end
class QuarkListQuarkString < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.no_spurious_cast_md.quark_List_quark_String_.new() }



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

    static no_spurious_cast_A_md: -> { ::Quark.no_spurious_cast_md.no_spurious_cast_A.singleton }
    static no_spurious_cast_B_md: -> { ::Quark.no_spurious_cast_md.no_spurious_cast_B.singleton }
    static no_spurious_cast_X_quark_int__md: -> { ::Quark.no_spurious_cast_md.no_spurious_cast_X_quark_int_.singleton }
    static no_spurious_cast_Y_md: -> { ::Quark.no_spurious_cast_md.no_spurious_cast_Y.singleton }



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
end # module NoSpuriousCastMd
end # module Quark
