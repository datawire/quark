module Quark
require "quark"
def self.logging_config; LoggingConfig; end
module LoggingConfig
require 'quark' # .../concurrent
require_relative 'logging_config' # 0 () ()


def self.call_main()
    self.main(::DatawireQuarkCore::List.new(ARGV))

    nil
end
def self.main(args)
    
    ::DatawireQuarkCore::LoggerConfig.config().setAppender(::DatawireQuarkCore::LoggerConfig.stdout()).setLevel("DEBUG").configure()
    l = ::Quark.quark.concurrent.Context.runtime().logger("hello")
    l.trace("Should not see trace log")
    l.debug("Debug log")
    l.info("Info log")
    l.error("Error log")


    nil
end

if __FILE__ == $0 then ::Quark.logging_config.call_main() end

end # module LoggingConfig
end # module Quark
