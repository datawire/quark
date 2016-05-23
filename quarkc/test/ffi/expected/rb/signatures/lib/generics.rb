module Quark
require "quark"
def self.generics; Generics; end
module Generics
require 'quark' # .../reflect
require_relative 'generics/constructors' # 0 ('generics',) ()
require_relative 'generics/pkg' # 0 ('generics',) ()
require_relative 'generics/ccc' # 0 ('generics',) ()
require_relative 'quark_ffi_signatures_md' # 0 () ()


def self.Box; Box; end
class Box < ::DatawireQuarkCore::QuarkObject
    attr_accessor :contents



    def initialize()
        self.__init_fields__

        nil
    end




    def set(contents)
        
        nil

        nil
    end

    def get()
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.T }

        nil
    end

    def _getClass()
        
        return "generics.Box<quark.Object>"

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
            (self).contents = ::DatawireQuarkCore.cast(value) { ::Quark.T }
        end

        nil
    end

    def __init_fields__()
        
        self.contents = nil

        nil
    end


end

def self.Crate; Crate; end
class Crate < ::DatawireQuarkCore::QuarkObject
    attr_accessor :box, :ibox
    extend ::DatawireQuarkCore::Static

    static generics_Box_quark_Object__ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_Box_quark_Object__md }
    static generics_Box_quark_int__ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_Box_quark_int__md }
    static generics_Crate_quark_Object__ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_Crate_quark_Object__md }



    def initialize()
        self.__init_fields__

        nil
    end




    def set(stuff)
        
        nil

        nil
    end

    def get()
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.T }

        nil
    end

    def _getClass()
        
        return "generics.Crate<quark.Object>"

        nil
    end

    def _getField(name)
        
        if ((name) == ("box"))
            return (self).box
        end
        if ((name) == ("ibox"))
            return (self).ibox
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("box"))
            (self).box = ::DatawireQuarkCore.cast(value) { ::Quark.generics.Box }
        end
        if ((name) == ("ibox"))
            (self).ibox = ::DatawireQuarkCore.cast(value) { ::Quark.generics.Box }
        end

        nil
    end

    def __init_fields__()
        
        self.box = nil
        self.ibox = nil

        nil
    end


end
Crate.unlazy_statics

def self.Sack; Sack; end
class Sack < ::DatawireQuarkCore::QuarkObject
    attr_accessor :ints
    extend ::DatawireQuarkCore::Static

    static generics_Sack_ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_Sack_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "generics.Sack"

        nil
    end

    def _getField(name)
        
        if ((name) == ("ints"))
            return (self).ints
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("ints"))
            (self).ints = ::DatawireQuarkCore.cast(value) { ::Quark.generics.Box }
        end

        nil
    end

    def __init_fields__()
        
        self.ints = nil

        nil
    end


end
Sack.unlazy_statics

def self.Matrix; Matrix; end
class Matrix < ::DatawireQuarkCore::QuarkObject
    attr_accessor :width, :height, :columns
    extend ::DatawireQuarkCore::Static

    static generics_Matrix_quark_Object__ref: -> { ::Quark.quark_ffi_signatures_md.Root.generics_Matrix_quark_Object__md }
    static quark_List_quark_List_quark_Object___ref: -> { ::Quark.quark_ffi_signatures_md.Root.quark_List_quark_List_quark_Object___md }
    static quark_List_quark_Object__ref: -> { ::Quark.quark_ffi_signatures_md.Root.quark_List_quark_Object__md }



    def initialize(width, height)
        
        self.__init_fields__

        nil
    end




    def __get__(i, j)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.T }

        nil
    end

    def __set__(i, j, value)
        
        nil

        nil
    end

    def _getClass()
        
        return "generics.Matrix<quark.Object>"

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
            (self).width = ::DatawireQuarkCore.cast(value) { ::Integer }
        end
        if ((name) == ("height"))
            (self).height = ::DatawireQuarkCore.cast(value) { ::Integer }
        end
        if ((name) == ("columns"))
            (self).columns = ::DatawireQuarkCore.cast(value) { ::DatawireQuarkCore::List }
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
Matrix.unlazy_statics
end # module Generics
end # module Quark
