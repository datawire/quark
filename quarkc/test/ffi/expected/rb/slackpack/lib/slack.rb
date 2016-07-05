module Quark
require "quark"
def self.slack; Slack; end
module Slack
require 'quark' # .../reflect
require_relative 'slack/event' # 0 ('slack',) ()
require_relative 'slackpack_md' # 0 () ()
require 'quark' 


def self.SlackHandler; SlackHandler; end
##
# Event handler for slack events. All unhandled events
# are delegated to onSlackEvent by default.

class SlackHandler < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static slack_SlackHandler_ref: -> { nil }



    def initialize()
        self.__init_fields__

        nil
    end




    def onSlackEvent(event)
        
        nil

        nil
    end

    def onHello(hello)
        
        nil

        nil
    end

    def onSlackError(error)
        
        nil

        nil
    end

    def onMessage(message)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
SlackHandler.unlazy_statics

def self.User; User; end
##
# A reference to a user.

class User < ::DatawireQuarkCore::QuarkObject
    attr_accessor :client, :user
    extend ::DatawireQuarkCore::Static

    static slack_User_ref: -> { nil }



    def initialize(client, user)
        
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return "slack.User"

        nil
    end

    def _getField(name)
        
        if ((name) == ("client"))
            return (self).client
        end
        if ((name) == ("user"))
            return (self).user
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("client"))
            (self).client = ::DatawireQuarkCore.cast(value) { ::Quark.slack.Client }
        end
        if ((name) == ("user"))
            (self).user = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        self.client = nil
        self.user = nil

        nil
    end


end
User.unlazy_statics

def self.Channel; Channel; end
##
# A reference to a channel.

class Channel < ::DatawireQuarkCore::QuarkObject
    attr_accessor :client, :channel
    extend ::DatawireQuarkCore::Static

    static slack_Channel_ref: -> { nil }



    def initialize(client, channel)
        
        self.__init_fields__

        nil
    end




    ##
    # Send a message to a channel.

    def send(message)
        
        nil

        nil
    end

    def _getClass()
        
        return "slack.Channel"

        nil
    end

    def _getField(name)
        
        if ((name) == ("client"))
            return (self).client
        end
        if ((name) == ("channel"))
            return (self).channel
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("client"))
            (self).client = ::DatawireQuarkCore.cast(value) { ::Quark.slack.Client }
        end
        if ((name) == ("channel"))
            (self).channel = ::DatawireQuarkCore.cast(value) { ::String }
        end

        nil
    end

    def __init_fields__()
        
        self.client = nil
        self.channel = nil

        nil
    end


end
Channel.unlazy_statics

def self.Client; Client; end
##
# Represents a persistent connection to the slack service.

class Client < ::DatawireQuarkCore::QuarkObject
    attr_accessor :runtime, :token, :handler, :event_id, :socket
    extend ::DatawireQuarkCore::Static

    static slack_Client_ref: -> { nil }
    static quark_Map_quark_String_quark_Object__ref: -> { nil }



    def initialize(runtime, token, handler)
        
        self.__init_fields__

        nil
    end




    ##
    # Connect the client to the slack service.

    def connect()
        
        nil

        nil
    end

    def request(request, params, handler)
        
        nil

        nil
    end

    def ws_connect(wsurl)
        
        nil

        nil
    end

    def ws_send(message)
        
        nil

        nil
    end

    def onWSConnected(socket)
        
        nil

        nil
    end

    def onWSClose(socket)
        
        nil

        nil
    end

    def onWSError(socket, error)
        
        nil

        nil
    end

    def construct(type)
        
        return ::DatawireQuarkCore.cast(nil) { ::Quark.slack.event.SlackEvent }

        nil
    end

    def onWSMessage(socket, message)
        
        nil

        nil
    end

    def onHTTPResponse(request, response)
        
        nil

        nil
    end

    def _getClass()
        
        return "slack.Client"

        nil
    end

    def _getField(name)
        
        if ((name) == ("runtime"))
            return (self).runtime
        end
        if ((name) == ("token"))
            return (self).token
        end
        if ((name) == ("handler"))
            return (self).handler
        end
        if ((name) == ("event_id"))
            return (self).event_id
        end
        if ((name) == ("socket"))
            return (self).socket
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("runtime"))
            (self).runtime = ::DatawireQuarkCore.cast(value) { ::Quark.quark.Runtime }
        end
        if ((name) == ("token"))
            (self).token = ::DatawireQuarkCore.cast(value) { ::String }
        end
        if ((name) == ("handler"))
            (self).handler = ::DatawireQuarkCore.cast(value) { ::Quark.slack.SlackHandler }
        end
        if ((name) == ("event_id"))
            (self).event_id = ::DatawireQuarkCore.cast(value) { ::Integer }
        end
        if ((name) == ("socket"))
            (self).socket = ::DatawireQuarkCore.cast(value) { ::Quark.quark.WebSocket }
        end

        nil
    end

    ##
    # Called when the WebSocket is first created.

    def onWSInit(socket)
        
        nil

        nil
    end

    ##
    # Called when the WebSocket receives a binary message.

    def onWSBinary(socket, message)
        
        nil

        nil
    end

    ##
    # Called when the WebSocket disconnects cleanly.

    def onWSClosed(socket)
        
        nil

        nil
    end

    ##
    # Called when the WebSocket is done with life, one way or another.

    def onWSFinal(socket)
        
        nil

        nil
    end

    def onHTTPInit(request)
        
        nil

        nil
    end

    def onHTTPError(request, message)
        
        nil

        nil
    end

    def onHTTPFinal(request)
        
        nil

        nil
    end

    def __init_fields__()
        
        self.runtime = nil
        self.token = nil
        self.handler = nil
        self.event_id = nil
        self.socket = nil

        nil
    end


end
Client.unlazy_statics
end # module Slack
end # module Quark
