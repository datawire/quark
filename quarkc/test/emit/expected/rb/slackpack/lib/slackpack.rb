module Quark
require "quark"
def self.slackpack; Slackpack; end
module Slackpack
require_relative 'slack' # 0 () ()
require_relative 'pkg' # 0 () ()
require_relative 'slackpack' # 0 () ()

def self.main()
    
    cli = ::Quark.slack.Client.new(nil, "fake-token", ::Quark.pkg.Handler.new())
    cli.onWSMessage(nil, "{\"type\": \"hello\"}")
    cli.onWSMessage(nil, "{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}")


    nil
end

if __FILE__ == $0
    ::Quark.slackpack.main()
end

end # module Slackpack
end # module Quark
