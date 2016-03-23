module Quark
def self.slack; MODULE_slack; end
module MODULE_slack
require 'builtin' # .../reflect
require_relative 'slack/event' # 0 ('slack',) ()
require_relative 'slackpack_md' # 0 () ()

def self.SlackHandler; CLASS_SlackHandler; end
class CLASS_SlackHandler < Object
    extend DatawireQuarkCore::Static

    static slack_SlackHandler_ref: -> { ::Quark.slackpack_md.Root.slack_SlackHandler_md }



    def initialize()
        self.__init_fields__

        nil
    end




    def onSlackEvent(event)
        
        nil

        nil
    end

    def onHello(hello)
        
        self.onSlackEvent(hello)

        nil
    end

    def onSlackError(error)
        
        self.onSlackEvent(error)

        nil
    end

    def onMessage(message)
        
        self.onSlackEvent(message)

        nil
    end

    def __init_fields__()
        

        nil
    end


end
CLASS_SlackHandler.unlazy_statics

def self.User; CLASS_User; end
class CLASS_User < Object
    attr_accessor :client, :user
    extend DatawireQuarkCore::Static

    static slack_User_ref: -> { ::Quark.slackpack_md.Root.slack_User_md }



    def initialize(client, user)
        
        self.__init_fields__
        (self).client = client
        (self).user = user

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
            (self).client = value
        end
        if ((name) == ("user"))
            (self).user = value
        end

        nil
    end

    def __init_fields__()
        

        self.client = nil
        self.user = nil

        nil
    end


end
CLASS_User.unlazy_statics

def self.Channel; CLASS_Channel; end
class CLASS_Channel < Object
    attr_accessor :client, :channel
    extend DatawireQuarkCore::Static

    static slack_Channel_ref: -> { ::Quark.slackpack_md.Root.slack_Channel_md }



    def initialize(client, channel)
        
        self.__init_fields__
        (self).client = client
        (self).channel = channel

        nil
    end




    def send(message)
        
        id = (@client).event_id
        (@client).event_id = ((@client).event_id) + (1)
        msg = DatawireQuarkCore::JSONObject.new
        (msg).setObjectItem(("id"), (DatawireQuarkCore::JSONObject.new.setNumber(id)))
        (msg).setObjectItem(("type"), (DatawireQuarkCore::JSONObject.new.setString("message")))
        (msg).setObjectItem(("channel"), (DatawireQuarkCore::JSONObject.new.setString((self).channel)))
        (msg).setObjectItem(("text"), (DatawireQuarkCore::JSONObject.new.setString(message)))
        @client.ws_send(msg.toString())

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
            (self).client = value
        end
        if ((name) == ("channel"))
            (self).channel = value
        end

        nil
    end

    def __init_fields__()
        

        self.client = nil
        self.channel = nil

        nil
    end


end
CLASS_Channel.unlazy_statics

def self.Client; CLASS_Client; end
class CLASS_Client < Object
    attr_accessor :runtime, :token, :handler, :event_id, :socket
    extend DatawireQuarkCore::Static

    static slack_Client_ref: -> { ::Quark.slackpack_md.Root.slack_Client_md }
    static builtin_Map_builtin_String_builtin_Object__ref: -> { ::Quark.slackpack_md.Root.builtin_Map_builtin_String_builtin_Object__md }



    def initialize(runtime, token, handler)
        
        self.__init_fields__
        (self).runtime = runtime
        (self).token = token
        (self).handler = handler

        nil
    end




    def connect()
        
        self.request("rtm.start", Hash.new(), self)

        nil
    end

    def request(request, params, handler)
        
        url = ("https://slack.com/api/") + (request)
        req = DatawireQuarkCore::HTTP::Request.new(url)
        req.setMethod("POST")
        (params)["token"] = ((self).token)
        req.setBody(DatawireQuarkCore.urlencode(params))
        req.setHeader("Content-Type", "application/x-www-form-urlencoded")
        (self).runtime.request(req, handler)

        nil
    end

    def ws_connect(wsurl)
        
        (self).runtime.open(wsurl, self)

        nil
    end

    def ws_send(message)
        
        @socket.send(message)

        nil
    end

    def onWSConnected(socket)
        
        (self).socket = socket

        nil
    end

    def onWSClose(socket)
        
        DatawireQuarkCore.print("socket closed")

        nil
    end

    def onWSError(socket)
        
        DatawireQuarkCore.print("socket error")

        nil
    end

    def construct(type)
        
        if ((type) == ("error"))
            return ::Quark.slack.event.SlackError.new()
        end
        if ((type) == ("hello"))
            return ::Quark.slack.event.Hello.new()
        end
        if ((type) == ("message"))
            return ::Quark.slack.event.Message.new()
        end
        return ::Quark.slack.event.SlackEvent.new()

        nil
    end

    def onWSMessage(socket, message)
        
        obj = DatawireQuarkCore::JSONObject.parse(message)
        type = (obj).getObjectItem("type").getString()
        event = self.construct(type)
        event.load(self, obj)
        event.dispatch((self).handler)

        nil
    end

    def onHTTPResponse(request, response)
        
        code = response.getCode()
        error = nil
        if ((code) != (200))
            error = ::Quark.slack.event.SlackError.new()
            (error).code = code
            error.dispatch((self).handler)
        else
            login_data = DatawireQuarkCore::JSONObject.parse(response.getBody())
            if ((login_data).getObjectItem("ok").getBool())
                self.ws_connect((login_data).getObjectItem("url").getString())
            else
                error = ::Quark.slack.event.SlackError.new()
                (error).text = (login_data).getObjectItem("error").getString()
                error.dispatch((self).handler)
            end
        end

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
            (self).runtime = value
        end
        if ((name) == ("token"))
            (self).token = value
        end
        if ((name) == ("handler"))
            (self).handler = value
        end
        if ((name) == ("event_id"))
            (self).event_id = value
        end
        if ((name) == ("socket"))
            (self).socket = value
        end

        nil
    end

    def onWSInit(socket)
        
        nil

        nil
    end

    def onWSBinary(socket, message)
        
        nil

        nil
    end

    def onWSClosed(socket)
        
        nil

        nil
    end

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
        self.event_id = 0
        self.socket = nil

        nil
    end


end
CLASS_Client.unlazy_statics
end # module MODULE_slack
end # module Quark
