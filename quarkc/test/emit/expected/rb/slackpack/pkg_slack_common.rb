require "datawire-quark-core"
require "../slack"
require "../pkg"

class Functions < Object
    

    

    
    def self.main()
        
        cli = slack.Client.new(nil, "fake-token", pkg.Handler.new())
        cli.onWSMessage(nil, "{\"type\": \"hello\"}")
        cli.onWSMessage(nil, "{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}")

        nil
    end


end
