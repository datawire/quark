module Quark
def self.no_spurious_cast_md; MODULE_no_spurious_cast_md; end
module MODULE_no_spurious_cast_md
require 'quark' # .../reflect
# for ('no_spurious_cast_md',): require_relative 'no_spurious_cast' # 0 () ()

def self.no_spurious_cast_A; CLASS_no_spurious_cast_A; end
class CLASS_no_spurious_cast_A < ::Quark.quark.reflect.QuarkClass
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
        

        nil
    end


end
CLASS_no_spurious_cast_A.unlazy_statics

def self.no_spurious_cast_B; CLASS_no_spurious_cast_B; end
class CLASS_no_spurious_cast_B < ::Quark.quark.reflect.QuarkClass
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
        

        nil
    end


end
CLASS_no_spurious_cast_B.unlazy_statics

def self.no_spurious_cast_X_quark_int_; CLASS_no_spurious_cast_X_quark_int_; end
class CLASS_no_spurious_cast_X_quark_int_ < ::Quark.quark.reflect.QuarkClass
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
        

        nil
    end


end
CLASS_no_spurious_cast_X_quark_int_.unlazy_statics

def self.no_spurious_cast_Y; CLASS_no_spurious_cast_Y; end
class CLASS_no_spurious_cast_Y < ::Quark.quark.reflect.QuarkClass
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
        

        nil
    end


end
CLASS_no_spurious_cast_Y.unlazy_statics

def self.Root; CLASS_Root; end
class CLASS_Root < ::DatawireQuarkCore::QuarkObject
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
CLASS_Root.unlazy_statics
end # module MODULE_no_spurious_cast_md
end # module Quark
