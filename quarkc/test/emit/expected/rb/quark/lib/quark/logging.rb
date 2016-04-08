module Quark
def self.quark; Quark; end
module Quark
def self.logging; Logging; end
module Logging
require_relative 'reflect' # 1 () ()
require_relative '../quark_md' # 0 () ('quark',)


def self.Appender; Appender; end
class Appender < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_logging_Appender_ref: -> { ::Quark.quark_md.Root.quark_logging_Appender_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def __init_fields__()
        

        nil
    end


end
Appender.unlazy_statics

def self.Config; Config; end
class Config < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static quark_logging_Config_ref: -> { ::Quark.quark_md.Root.quark_logging_Config_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def setAppender(appender)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def setLevel(level)
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def configure()
        raise NotImplementedError, "this is an abstract method"

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Config.unlazy_statics
end # module Logging
end # module Quark
end # module Quark
