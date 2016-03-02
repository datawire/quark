require "datawire-quark-core"
require "../../builtin"
require "../../slack"
require "../../slackpack_md"


class SlackEvent < Object
    attr_accessor :type, :user, :channel, :timestamp

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def load(client, obj)
        
        (self).type = (obj).getObjectItem("type").getString()
        uid = (obj).getObjectItem("user").getString()
        if ((uid) != (nil))
            (self).user = slack.User.new(client, uid)
        end
        chid = (obj).getObjectItem("channel").getString()
        if ((chid) != (nil))
            (self).channel = slack.Channel.new(client, chid)
        end
        (self).timestamp = (obj).getObjectItem("ts").getString()

        nil
    end

    def dispatch(handler)
        
        handler.onSlackEvent(self)

        nil
    end

    def _getClass()
        
        return "slack.event.SlackEvent"

        nil
    end

    def _getField(name)
        
        if ((name) == ("type"))
            return (self).type
        end
        if ((name) == ("user"))
            return (self).user
        end
        if ((name) == ("channel"))
            return (self).channel
        end
        if ((name) == ("timestamp"))
            return (self).timestamp
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("type"))
            (self).type = value
        end
        if ((name) == ("user"))
            (self).user = value
        end
        if ((name) == ("channel"))
            (self).channel = value
        end
        if ((name) == ("timestamp"))
            (self).timestamp = value
        end

        nil
    end

    def __init_fields__()
        

        self.type = nil
        self.user = nil
        self.channel = nil
        self.timestamp = nil

        nil
    end


end

class SlackError < SlackEvent
    attr_accessor :code, :text

    
    def initialize()
        
        super()

        nil
    end



    
    def load(client, obj)
        
        method(:load).super_method.call(client, obj)
        (self).code = ((obj).getObjectItem("code")).getNumber.round
        (self).text = (obj).getObjectItem("text").getString()

        nil
    end

    def dispatch(handler)
        
        handler.onSlackError(self)

        nil
    end

    def _getClass()
        
        return "slack.event.SlackError"

        nil
    end

    def _getField(name)
        
        if ((name) == ("type"))
            return (self).type
        end
        if ((name) == ("user"))
            return (self).user
        end
        if ((name) == ("channel"))
            return (self).channel
        end
        if ((name) == ("timestamp"))
            return (self).timestamp
        end
        if ((name) == ("code"))
            return (self).code
        end
        if ((name) == ("text"))
            return (self).text
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("type"))
            (self).type = value
        end
        if ((name) == ("user"))
            (self).user = value
        end
        if ((name) == ("channel"))
            (self).channel = value
        end
        if ((name) == ("timestamp"))
            (self).timestamp = value
        end
        if ((name) == ("code"))
            (self).code = value
        end
        if ((name) == ("text"))
            (self).text = value
        end

        nil
    end

    def __init_fields__()
        

        self.code = nil
        self.text = nil

        nil
    end


end

class Hello < SlackEvent
    attr_accessor 

    
    def initialize()
        
        super()

        nil
    end



    
    def dispatch(handler)
        
        handler.onHello(self)

        nil
    end

    def _getClass()
        
        return "slack.event.Hello"

        nil
    end

    def _getField(name)
        
        if ((name) == ("type"))
            return (self).type
        end
        if ((name) == ("user"))
            return (self).user
        end
        if ((name) == ("channel"))
            return (self).channel
        end
        if ((name) == ("timestamp"))
            return (self).timestamp
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("type"))
            (self).type = value
        end
        if ((name) == ("user"))
            (self).user = value
        end
        if ((name) == ("channel"))
            (self).channel = value
        end
        if ((name) == ("timestamp"))
            (self).timestamp = value
        end

        nil
    end

    def __init_fields__()
        

        nil
    end


end

class Message < SlackEvent
    attr_accessor :subtype, :hidden, :text, :edited

    
    def initialize()
        
        super()

        nil
    end



    
    def load(client, obj)
        
        method(:load).super_method.call(client, obj)
        (self).subtype = (obj).getObjectItem("subtype").getString()
        (self).hidden = (obj).getObjectItem("hidden").getBool()
        (self).text = (obj).getObjectItem("text").getString()
        edited = (obj).getObjectItem("edited")
        if (edited.isDefined())
            (self).edited = Edited.new()
            ((self).edited).user = slack.User.new(client, (edited).getObjectItem("user").getString())
            ((self).edited).timestamp = (edited).getObjectItem("ts").getString()
        end

        nil
    end

    def dispatch(handler)
        
        handler.onMessage(self)

        nil
    end

    def _getClass()
        
        return "slack.event.Message"

        nil
    end

    def _getField(name)
        
        if ((name) == ("type"))
            return (self).type
        end
        if ((name) == ("user"))
            return (self).user
        end
        if ((name) == ("channel"))
            return (self).channel
        end
        if ((name) == ("timestamp"))
            return (self).timestamp
        end
        if ((name) == ("subtype"))
            return (self).subtype
        end
        if ((name) == ("hidden"))
            return (self).hidden
        end
        if ((name) == ("text"))
            return (self).text
        end
        if ((name) == ("edited"))
            return (self).edited
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("type"))
            (self).type = value
        end
        if ((name) == ("user"))
            (self).user = value
        end
        if ((name) == ("channel"))
            (self).channel = value
        end
        if ((name) == ("timestamp"))
            (self).timestamp = value
        end
        if ((name) == ("subtype"))
            (self).subtype = value
        end
        if ((name) == ("hidden"))
            (self).hidden = value
        end
        if ((name) == ("text"))
            (self).text = value
        end
        if ((name) == ("edited"))
            (self).edited = value
        end

        nil
    end

    def __init_fields__()
        

        self.subtype = nil
        self.hidden = false
        self.text = nil
        self.edited = nil

        nil
    end


end

class Edited < Object
    attr_accessor :user, :timestamp

    
    def initialize()
        self.__init_fields__

        nil
    end



    
    def _getClass()
        
        return "slack.event.Edited"

        nil
    end

    def _getField(name)
        
        if ((name) == ("user"))
            return (self).user
        end
        if ((name) == ("timestamp"))
            return (self).timestamp
        end
        return nil

        nil
    end

    def _setField(name, value)
        
        if ((name) == ("user"))
            (self).user = value
        end
        if ((name) == ("timestamp"))
            (self).timestamp = value
        end

        nil
    end

    def __init_fields__()
        

        self.user = nil
        self.timestamp = nil

        nil
    end


end
