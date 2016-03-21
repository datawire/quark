module Quark
require "datawire-quark-core"
def self.pkg_slack_common; MODULE_pkg_slack_common; end
module MODULE_pkg_slack_common
require 'slack'
require 'pkg'

def self.main()
    
    cli = ::Quark.slack.Client.new(nil, "fake-token", ::Quark.pkg.Handler.new())
    cli.onWSMessage(nil, "{\"type\": \"hello\"}")
    cli.onWSMessage(nil, "{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}")


    nil
end
end # module MODULE_pkg_slack_common
end # module Quark
