module Quark
def self.pkg_slack_common; MODULE_pkg_slack_common; end
module MODULE_pkg_slack_common
require_relative 'slack' # 0 () ()
require_relative 'pkg' # 0 () ()

def self.main()
    
    cli = ::Quark.slack.Client.new(nil, "fake-token", ::Quark.pkg.Handler.new())
    cli.onWSMessage(nil, "{\"type\": \"hello\"}")
    cli.onWSMessage(nil, "{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}")


    nil
end
end # module MODULE_pkg_slack_common
end # module Quark
