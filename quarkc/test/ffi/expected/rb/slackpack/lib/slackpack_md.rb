module Quark
def self.slackpack_md; SlackpackMd; end
module SlackpackMd
require 'quark' # .../reflect
# for ('slackpack_md',): require_relative 'slack/event' # 0 ('slack',) ()
# for ('slackpack_md',): require_relative 'slack' # 0 () ()
require 'quark' 
# for ('slackpack_md',): require_relative 'slackpack' # 0 () ()


def self.slack_event_SlackEvent_load_Method; SlackEventSlackEventLoadMethod; end
class SlackEventSlackEventLoadMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "load", ::DatawireQuarkCore::List.new(["slack.Client", "quark.JSONObject"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.event.SlackEvent }
        obj.load(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.Client }, ::DatawireQuarkCore.cast((args)[1]) { ::DatawireQuarkCore::JSONObject })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_event_SlackEvent_dispatch_Method; SlackEventSlackEventDispatchMethod; end
class SlackEventSlackEventDispatchMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "dispatch", ::DatawireQuarkCore::List.new(["slack.SlackHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.event.SlackEvent }
        obj.dispatch(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.SlackHandler })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_event_SlackEvent; SlackEventSlackEvent; end
class SlackEventSlackEvent < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_SlackEvent.new() }



    def initialize()
        
        super("slack.event.SlackEvent")
        (self).name = "slack.event.SlackEvent"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "type"), ::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("slack.Channel", "channel"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_SlackEvent_load_Method.new(), ::Quark.slackpack_md.slack_event_SlackEvent_dispatch_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new(["quark.Object"])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.SlackEvent.new()

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackEventSlackEvent.unlazy_statics


def self.slack_event_SlackError_load_Method; SlackEventSlackErrorLoadMethod; end
class SlackEventSlackErrorLoadMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "load", ::DatawireQuarkCore::List.new(["slack.Client", "quark.JSONObject"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.event.SlackError }
        obj.load(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.Client }, ::DatawireQuarkCore.cast((args)[1]) { ::DatawireQuarkCore::JSONObject })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_event_SlackError_dispatch_Method; SlackEventSlackErrorDispatchMethod; end
class SlackEventSlackErrorDispatchMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "dispatch", ::DatawireQuarkCore::List.new(["slack.SlackHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.event.SlackError }
        obj.dispatch(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.SlackHandler })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_event_SlackError; SlackEventSlackError; end
class SlackEventSlackError < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_SlackError.new() }



    def initialize()
        
        super("slack.event.SlackError")
        (self).name = "slack.event.SlackError"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "type"), ::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("slack.Channel", "channel"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp"), ::Quark.quark.reflect.Field.new("quark.int", "code"), ::Quark.quark.reflect.Field.new("quark.String", "text")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_SlackError_load_Method.new(), ::Quark.slackpack_md.slack_event_SlackError_dispatch_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new(["slack.event.SlackEvent"])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.SlackError.new()

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackEventSlackError.unlazy_statics


def self.slack_event_Hello_dispatch_Method; SlackEventHelloDispatchMethod; end
class SlackEventHelloDispatchMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "dispatch", ::DatawireQuarkCore::List.new(["slack.SlackHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.event.Hello }
        obj.dispatch(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.SlackHandler })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_event_Hello_load_Method; SlackEventHelloLoadMethod; end
class SlackEventHelloLoadMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "load", ::DatawireQuarkCore::List.new(["slack.Client", "quark.JSONObject"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.event.Hello }
        obj.load(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.Client }, ::DatawireQuarkCore.cast((args)[1]) { ::DatawireQuarkCore::JSONObject })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_event_Hello; SlackEventHello; end
class SlackEventHello < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_Hello.new() }



    def initialize()
        
        super("slack.event.Hello")
        (self).name = "slack.event.Hello"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "type"), ::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("slack.Channel", "channel"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_Hello_dispatch_Method.new(), ::Quark.slackpack_md.slack_event_Hello_load_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new(["slack.event.SlackEvent"])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.Hello.new()

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackEventHello.unlazy_statics


def self.slack_event_Message_load_Method; SlackEventMessageLoadMethod; end
class SlackEventMessageLoadMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "load", ::DatawireQuarkCore::List.new(["slack.Client", "quark.JSONObject"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.event.Message }
        obj.load(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.Client }, ::DatawireQuarkCore.cast((args)[1]) { ::DatawireQuarkCore::JSONObject })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_event_Message_dispatch_Method; SlackEventMessageDispatchMethod; end
class SlackEventMessageDispatchMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "dispatch", ::DatawireQuarkCore::List.new(["slack.SlackHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.event.Message }
        obj.dispatch(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.SlackHandler })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_event_Message; SlackEventMessage; end
class SlackEventMessage < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_Message.new() }



    def initialize()
        
        super("slack.event.Message")
        (self).name = "slack.event.Message"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.String", "type"), ::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("slack.Channel", "channel"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp"), ::Quark.quark.reflect.Field.new("quark.String", "subtype"), ::Quark.quark.reflect.Field.new("quark.bool", "hidden"), ::Quark.quark.reflect.Field.new("quark.String", "text"), ::Quark.quark.reflect.Field.new("slack.event.Edited", "edited")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_event_Message_load_Method.new(), ::Quark.slackpack_md.slack_event_Message_dispatch_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new(["slack.event.SlackEvent"])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.Message.new()

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackEventMessage.unlazy_statics


def self.slack_event_Edited; SlackEventEdited; end
class SlackEventEdited < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_event_Edited.new() }



    def initialize()
        
        super("slack.event.Edited")
        (self).name = "slack.event.Edited"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("slack.User", "user"), ::Quark.quark.reflect.Field.new("quark.String", "timestamp")])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new(["quark.Object"])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.event.Edited.new()

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackEventEdited.unlazy_statics


def self.slack_SlackHandler_onSlackEvent_Method; SlackSlackHandlerOnSlackEventMethod; end
class SlackSlackHandlerOnSlackEventMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onSlackEvent", ::DatawireQuarkCore::List.new(["slack.event.SlackEvent"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.SlackHandler }
        obj.onSlackEvent(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.event.SlackEvent })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_SlackHandler_onHello_Method; SlackSlackHandlerOnHelloMethod; end
class SlackSlackHandlerOnHelloMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHello", ::DatawireQuarkCore::List.new(["slack.event.Hello"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.SlackHandler }
        obj.onHello(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.event.Hello })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_SlackHandler_onSlackError_Method; SlackSlackHandlerOnSlackErrorMethod; end
class SlackSlackHandlerOnSlackErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onSlackError", ::DatawireQuarkCore::List.new(["slack.event.SlackError"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.SlackHandler }
        obj.onSlackError(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.event.SlackError })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_SlackHandler_onMessage_Method; SlackSlackHandlerOnMessageMethod; end
class SlackSlackHandlerOnMessageMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onMessage", ::DatawireQuarkCore::List.new(["slack.event.Message"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.SlackHandler }
        obj.onMessage(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.event.Message })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_SlackHandler; SlackSlackHandler; end
class SlackSlackHandler < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_SlackHandler.new() }



    def initialize()
        
        super("slack.SlackHandler")
        (self).name = "slack.SlackHandler"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_SlackHandler_onSlackEvent_Method.new(), ::Quark.slackpack_md.slack_SlackHandler_onHello_Method.new(), ::Quark.slackpack_md.slack_SlackHandler_onSlackError_Method.new(), ::Quark.slackpack_md.slack_SlackHandler_onMessage_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new(["quark.Object"])

        nil
    end




    def construct(args)
        
        return nil

        nil
    end

    def isAbstract()
        
        return true

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackSlackHandler.unlazy_statics


def self.slack_User; SlackUser; end
class SlackUser < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_User.new() }



    def initialize()
        
        super("slack.User")
        (self).name = "slack.User"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("slack.Client", "client"), ::Quark.quark.reflect.Field.new("quark.String", "user")])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new(["quark.Object"])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.User.new(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.Client }, ::DatawireQuarkCore.cast((args)[1]) { ::String })

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackUser.unlazy_statics


def self.slack_Channel_send_Method; SlackChannelSendMethod; end
class SlackChannelSendMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "send", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Channel }
        obj.send(::DatawireQuarkCore.cast((args)[0]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Channel; SlackChannel; end
class SlackChannel < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_Channel.new() }



    def initialize()
        
        super("slack.Channel")
        (self).name = "slack.Channel"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("slack.Client", "client"), ::Quark.quark.reflect.Field.new("quark.String", "channel")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_Channel_send_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new(["quark.Object"])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.Channel.new(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.Client }, ::DatawireQuarkCore.cast((args)[1]) { ::String })

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackChannel.unlazy_statics


def self.slack_Client_connect_Method; SlackClientConnectMethod; end
class SlackClientConnectMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "connect", ::DatawireQuarkCore::List.new([]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.connect()
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_request_Method; SlackClientRequestMethod; end
class SlackClientRequestMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "request", ::DatawireQuarkCore::List.new(["quark.String", "quark.Map<quark.String,quark.Object>", "quark.HTTPHandler"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.request(::DatawireQuarkCore.cast((args)[0]) { ::String }, ::DatawireQuarkCore.cast((args)[1]) { ::Hash }, ::DatawireQuarkCore.cast((args)[2]) { ::Quark.quark.HTTPHandler })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_ws_connect_Method; SlackClientWsConnectMethod; end
class SlackClientWsConnectMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "ws_connect", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.ws_connect(::DatawireQuarkCore.cast((args)[0]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_ws_send_Method; SlackClientWsSendMethod; end
class SlackClientWsSendMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "ws_send", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.ws_send(::DatawireQuarkCore.cast((args)[0]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onWSConnected_Method; SlackClientOnWSConnectedMethod; end
class SlackClientOnWSConnectedMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSConnected", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onWSConnected(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.WebSocket })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onWSClose_Method; SlackClientOnWSCloseMethod; end
class SlackClientOnWSCloseMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSClose", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onWSClose(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.WebSocket })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onWSError_Method; SlackClientOnWSErrorMethod; end
class SlackClientOnWSErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSError", ::DatawireQuarkCore::List.new(["quark.WebSocket", "quark.WSError"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onWSError(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.WebSocket }, ::DatawireQuarkCore.cast((args)[1]) { ::Quark.quark.WSError })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_construct_Method; SlackClientConstructMethod; end
class SlackClientConstructMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("slack.event.SlackEvent", "construct", ::DatawireQuarkCore::List.new(["quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        return obj.construct(::DatawireQuarkCore.cast((args)[0]) { ::String })

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onWSMessage_Method; SlackClientOnWSMessageMethod; end
class SlackClientOnWSMessageMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSMessage", ::DatawireQuarkCore::List.new(["quark.WebSocket", "quark.String"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onWSMessage(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.WebSocket }, ::DatawireQuarkCore.cast((args)[1]) { ::String })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onHTTPResponse_Method; SlackClientOnHTTPResponseMethod; end
class SlackClientOnHTTPResponseMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPResponse", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPResponse"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onHTTPResponse(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.HTTPRequest }, ::DatawireQuarkCore.cast((args)[1]) { ::Quark.quark.HTTPResponse })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onWSInit_Method; SlackClientOnWSInitMethod; end
class SlackClientOnWSInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSInit", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onWSInit(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.WebSocket })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onWSBinary_Method; SlackClientOnWSBinaryMethod; end
class SlackClientOnWSBinaryMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSBinary", ::DatawireQuarkCore::List.new(["quark.WebSocket", "quark.Buffer"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onWSBinary(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.WebSocket }, (args)[1])
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onWSClosed_Method; SlackClientOnWSClosedMethod; end
class SlackClientOnWSClosedMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSClosed", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onWSClosed(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.WebSocket })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onWSFinal_Method; SlackClientOnWSFinalMethod; end
class SlackClientOnWSFinalMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onWSFinal", ::DatawireQuarkCore::List.new(["quark.WebSocket"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onWSFinal(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.WebSocket })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onHTTPInit_Method; SlackClientOnHTTPInitMethod; end
class SlackClientOnHTTPInitMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPInit", ::DatawireQuarkCore::List.new(["quark.HTTPRequest"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onHTTPInit(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.HTTPRequest })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onHTTPError_Method; SlackClientOnHTTPErrorMethod; end
class SlackClientOnHTTPErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPError", ::DatawireQuarkCore::List.new(["quark.HTTPRequest", "quark.HTTPError"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onHTTPError(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.HTTPRequest }, ::DatawireQuarkCore.cast((args)[1]) { ::Quark.quark.HTTPError })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client_onHTTPFinal_Method; SlackClientOnHTTPFinalMethod; end
class SlackClientOnHTTPFinalMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHTTPFinal", ::DatawireQuarkCore::List.new(["quark.HTTPRequest"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slack.Client }
        obj.onHTTPFinal(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.HTTPRequest })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slack_Client; SlackClient; end
class SlackClient < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slack_Client.new() }



    def initialize()
        
        super("slack.Client")
        (self).name = "slack.Client"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([::Quark.quark.reflect.Field.new("quark.Runtime", "runtime"), ::Quark.quark.reflect.Field.new("quark.String", "token"), ::Quark.quark.reflect.Field.new("slack.SlackHandler", "handler"), ::Quark.quark.reflect.Field.new("quark.int", "event_id"), ::Quark.quark.reflect.Field.new("quark.WebSocket", "socket")])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slack_Client_connect_Method.new(), ::Quark.slackpack_md.slack_Client_request_Method.new(), ::Quark.slackpack_md.slack_Client_ws_connect_Method.new(), ::Quark.slackpack_md.slack_Client_ws_send_Method.new(), ::Quark.slackpack_md.slack_Client_onWSConnected_Method.new(), ::Quark.slackpack_md.slack_Client_onWSClose_Method.new(), ::Quark.slackpack_md.slack_Client_onWSError_Method.new(), ::Quark.slackpack_md.slack_Client_construct_Method.new(), ::Quark.slackpack_md.slack_Client_onWSMessage_Method.new(), ::Quark.slackpack_md.slack_Client_onHTTPResponse_Method.new(), ::Quark.slackpack_md.slack_Client_onWSInit_Method.new(), ::Quark.slackpack_md.slack_Client_onWSBinary_Method.new(), ::Quark.slackpack_md.slack_Client_onWSClosed_Method.new(), ::Quark.slackpack_md.slack_Client_onWSFinal_Method.new(), ::Quark.slackpack_md.slack_Client_onHTTPInit_Method.new(), ::Quark.slackpack_md.slack_Client_onHTTPError_Method.new(), ::Quark.slackpack_md.slack_Client_onHTTPFinal_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new(["quark.Object"])

        nil
    end




    def construct(args)
        
        return ::Quark.slack.Client.new(::DatawireQuarkCore.cast((args)[0]) { ::Quark.quark.Runtime }, ::DatawireQuarkCore.cast((args)[1]) { ::String }, ::DatawireQuarkCore.cast((args)[2]) { ::Quark.slack.SlackHandler })

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackClient.unlazy_statics


def self.slackpack_Handler_onSlackEvent_Method; SlackpackHandlerOnSlackEventMethod; end
class SlackpackHandlerOnSlackEventMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onSlackEvent", ::DatawireQuarkCore::List.new(["slack.event.SlackEvent"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slackpack.Handler }
        obj.onSlackEvent(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.event.SlackEvent })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slackpack_Handler_onHello_Method; SlackpackHandlerOnHelloMethod; end
class SlackpackHandlerOnHelloMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onHello", ::DatawireQuarkCore::List.new(["slack.event.Hello"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slackpack.Handler }
        obj.onHello(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.event.Hello })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slackpack_Handler_onSlackError_Method; SlackpackHandlerOnSlackErrorMethod; end
class SlackpackHandlerOnSlackErrorMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onSlackError", ::DatawireQuarkCore::List.new(["slack.event.SlackError"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slackpack.Handler }
        obj.onSlackError(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.event.SlackError })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slackpack_Handler_onMessage_Method; SlackpackHandlerOnMessageMethod; end
class SlackpackHandlerOnMessageMethod < ::Quark.quark.reflect.Method



    def initialize()
        
        super("quark.void", "onMessage", ::DatawireQuarkCore::List.new(["slack.event.Message"]))

        nil
    end




    def invoke(object, args)
        
        obj = ::DatawireQuarkCore.cast(object) { ::Quark.slackpack.Handler }
        obj.onMessage(::DatawireQuarkCore.cast((args)[0]) { ::Quark.slack.event.Message })
        return nil

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end

def self.slackpack_Handler; SlackpackHandler; end
class SlackpackHandler < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.slackpack_Handler.new() }



    def initialize()
        
        super("slackpack.Handler")
        (self).name = "slackpack.Handler"
        (self).parameters = ::DatawireQuarkCore::List.new([])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([::Quark.slackpack_md.slackpack_Handler_onSlackEvent_Method.new(), ::Quark.slackpack_md.slackpack_Handler_onHello_Method.new(), ::Quark.slackpack_md.slackpack_Handler_onSlackError_Method.new(), ::Quark.slackpack_md.slackpack_Handler_onMessage_Method.new()])
        (self).parents = ::DatawireQuarkCore::List.new(["quark.Object"])

        nil
    end




    def construct(args)
        
        return ::Quark.slackpack.Handler.new()

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
SlackpackHandler.unlazy_statics


def self.quark_Map_quark_String_quark_Object_; QuarkMapQuarkStringQuarkObject; end
class QuarkMapQuarkStringQuarkObject < ::Quark.quark.reflect.QuarkClass
    extend ::DatawireQuarkCore::Static

    static singleton: -> { ::Quark.slackpack_md.quark_Map_quark_String_quark_Object_.new() }



    def initialize()
        
        super("quark.Map<quark.String,quark.Object>")
        (self).name = "quark.Map"
        (self).parameters = ::DatawireQuarkCore::List.new(["quark.String", "quark.Object"])
        (self).fields = ::DatawireQuarkCore::List.new([])
        (self).methods = ::DatawireQuarkCore::List.new([])
        (self).parents = ::DatawireQuarkCore::List.new(["quark.Object"])

        nil
    end




    def construct(args)
        
        return ::Hash.new()

        nil
    end

    def isAbstract()
        
        return false

        nil
    end

    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        
        super

        nil
    end


end
QuarkMapQuarkStringQuarkObject.unlazy_statics


def self.Root; Root; end
class Root < ::DatawireQuarkCore::QuarkObject
    extend ::DatawireQuarkCore::Static

    static slack_event_SlackEvent_md: -> { ::Quark.slackpack_md.slack_event_SlackEvent.singleton }
    static slack_event_SlackError_md: -> { ::Quark.slackpack_md.slack_event_SlackError.singleton }
    static slack_event_Hello_md: -> { ::Quark.slackpack_md.slack_event_Hello.singleton }
    static slack_event_Message_md: -> { ::Quark.slackpack_md.slack_event_Message.singleton }
    static slack_event_Edited_md: -> { ::Quark.slackpack_md.slack_event_Edited.singleton }
    static slack_SlackHandler_md: -> { ::Quark.slackpack_md.slack_SlackHandler.singleton }
    static slack_User_md: -> { ::Quark.slackpack_md.slack_User.singleton }
    static slack_Channel_md: -> { ::Quark.slackpack_md.slack_Channel.singleton }
    static slack_Client_md: -> { ::Quark.slackpack_md.slack_Client.singleton }
    static slackpack_Handler_md: -> { ::Quark.slackpack_md.slackpack_Handler.singleton }
    static quark_Map_quark_String_quark_Object__md: -> { ::Quark.slackpack_md.quark_Map_quark_String_quark_Object_.singleton }



    def initialize()
        self.__init_fields__

        nil
    end




    def _getClass()
        
        return ::DatawireQuarkCore.cast(nil) { ::String }

        nil
    end

    def _getField(name)
        
        return nil

        nil
    end

    def _setField(name, value)
        
        nil

        nil
    end

    def __init_fields__()
        

        nil
    end


end
Root.unlazy_statics
end # module SlackpackMd
end # module Quark
