from quark_runtime import *

import quark.reflect
import slack
import slackpack_md


class SlackEvent(object):
    """
    Base class for all slack events.
    """
    def _init(self):
        self.type = None
        self.user = None
        self.channel = None
        self.timestamp = None

    def __init__(self): self._init()

    def load(self, client, obj):
        pass

    def dispatch(self, handler):
        pass

    def _getClass(self):
        return u"slack.event.SlackEvent"

    def _getField(self, name):
        if ((name) == (u"type")):
            return (self).type

        if ((name) == (u"user")):
            return (self).user

        if ((name) == (u"channel")):
            return (self).channel

        if ((name) == (u"timestamp")):
            return (self).timestamp

        return None

    def _setField(self, name, value):
        if ((name) == (u"type")):
            (self).type = value

        if ((name) == (u"user")):
            (self).user = value

        if ((name) == (u"channel")):
            (self).channel = value

        if ((name) == (u"timestamp")):
            (self).timestamp = value


SlackEvent.slack_event_SlackEvent_ref = None
class SlackError(SlackEvent):
    """
    The server has indicated an error has occurred.
    """
    def _init(self):
        SlackEvent._init(self)
        self.code = None
        self.text = None

    def __init__(self):
        super(SlackError, self).__init__();

    def load(self, client, obj):
        pass

    def dispatch(self, handler):
        pass

    def _getClass(self):
        return u"slack.event.SlackError"

    def _getField(self, name):
        if ((name) == (u"type")):
            return (self).type

        if ((name) == (u"user")):
            return (self).user

        if ((name) == (u"channel")):
            return (self).channel

        if ((name) == (u"timestamp")):
            return (self).timestamp

        if ((name) == (u"code")):
            return (self).code

        if ((name) == (u"text")):
            return (self).text

        return None

    def _setField(self, name, value):
        if ((name) == (u"type")):
            (self).type = value

        if ((name) == (u"user")):
            (self).user = value

        if ((name) == (u"channel")):
            (self).channel = value

        if ((name) == (u"timestamp")):
            (self).timestamp = value

        if ((name) == (u"code")):
            (self).code = value

        if ((name) == (u"text")):
            (self).text = value


SlackError.slack_event_SlackError_ref = None
class Hello(SlackEvent):
    """
    The client successfully connected to the server.
    """
    def _init(self):
        SlackEvent._init(self)

    def __init__(self):
        super(Hello, self).__init__();

    def dispatch(self, handler):
        pass

    def _getClass(self):
        return u"slack.event.Hello"

    def _getField(self, name):
        if ((name) == (u"type")):
            return (self).type

        if ((name) == (u"user")):
            return (self).user

        if ((name) == (u"channel")):
            return (self).channel

        if ((name) == (u"timestamp")):
            return (self).timestamp

        return None

    def _setField(self, name, value):
        if ((name) == (u"type")):
            (self).type = value

        if ((name) == (u"user")):
            (self).user = value

        if ((name) == (u"channel")):
            (self).channel = value

        if ((name) == (u"timestamp")):
            (self).timestamp = value


Hello.slack_event_Hello_ref = None
class Message(SlackEvent):
    """
    A message was sent to a channel.
    """
    def _init(self):
        SlackEvent._init(self)
        self.subtype = None
        self.hidden = None
        self.text = None
        self.edited = None

    def __init__(self):
        super(Message, self).__init__();

    def load(self, client, obj):
        pass

    def dispatch(self, handler):
        pass

    def _getClass(self):
        return u"slack.event.Message"

    def _getField(self, name):
        if ((name) == (u"type")):
            return (self).type

        if ((name) == (u"user")):
            return (self).user

        if ((name) == (u"channel")):
            return (self).channel

        if ((name) == (u"timestamp")):
            return (self).timestamp

        if ((name) == (u"subtype")):
            return (self).subtype

        if ((name) == (u"hidden")):
            return (self).hidden

        if ((name) == (u"text")):
            return (self).text

        if ((name) == (u"edited")):
            return (self).edited

        return None

    def _setField(self, name, value):
        if ((name) == (u"type")):
            (self).type = value

        if ((name) == (u"user")):
            (self).user = value

        if ((name) == (u"channel")):
            (self).channel = value

        if ((name) == (u"timestamp")):
            (self).timestamp = value

        if ((name) == (u"subtype")):
            (self).subtype = value

        if ((name) == (u"hidden")):
            (self).hidden = value

        if ((name) == (u"text")):
            (self).text = value

        if ((name) == (u"edited")):
            (self).edited = value


Message.slack_event_Message_ref = None
class Edited(object):
    """
    Metadata about an edit to a message.
    """
    def _init(self):
        self.user = None
        self.timestamp = None

    def __init__(self): self._init()

    def _getClass(self):
        return u"slack.event.Edited"

    def _getField(self, name):
        if ((name) == (u"user")):
            return (self).user

        if ((name) == (u"timestamp")):
            return (self).timestamp

        return None

    def _setField(self, name, value):
        if ((name) == (u"user")):
            (self).user = value

        if ((name) == (u"timestamp")):
            (self).timestamp = value


Edited.slack_event_Edited_ref = None
