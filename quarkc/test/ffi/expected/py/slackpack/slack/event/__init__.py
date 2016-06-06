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
            (self).type = _cast(value, lambda: unicode)

        if ((name) == (u"user")):
            (self).user = _cast(value, lambda: slack.User)

        if ((name) == (u"channel")):
            (self).channel = _cast(value, lambda: slack.Channel)

        if ((name) == (u"timestamp")):
            (self).timestamp = _cast(value, lambda: unicode)


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
            (self).type = _cast(value, lambda: unicode)

        if ((name) == (u"user")):
            (self).user = _cast(value, lambda: slack.User)

        if ((name) == (u"channel")):
            (self).channel = _cast(value, lambda: slack.Channel)

        if ((name) == (u"timestamp")):
            (self).timestamp = _cast(value, lambda: unicode)

        if ((name) == (u"code")):
            (self).code = _cast(value, lambda: int)

        if ((name) == (u"text")):
            (self).text = _cast(value, lambda: unicode)


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
            (self).type = _cast(value, lambda: unicode)

        if ((name) == (u"user")):
            (self).user = _cast(value, lambda: slack.User)

        if ((name) == (u"channel")):
            (self).channel = _cast(value, lambda: slack.Channel)

        if ((name) == (u"timestamp")):
            (self).timestamp = _cast(value, lambda: unicode)


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
            (self).type = _cast(value, lambda: unicode)

        if ((name) == (u"user")):
            (self).user = _cast(value, lambda: slack.User)

        if ((name) == (u"channel")):
            (self).channel = _cast(value, lambda: slack.Channel)

        if ((name) == (u"timestamp")):
            (self).timestamp = _cast(value, lambda: unicode)

        if ((name) == (u"subtype")):
            (self).subtype = _cast(value, lambda: unicode)

        if ((name) == (u"hidden")):
            (self).hidden = _cast(value, lambda: bool)

        if ((name) == (u"text")):
            (self).text = _cast(value, lambda: unicode)

        if ((name) == (u"edited")):
            (self).edited = _cast(value, lambda: Edited)


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
            (self).user = _cast(value, lambda: slack.User)

        if ((name) == (u"timestamp")):
            (self).timestamp = _cast(value, lambda: unicode)


Edited.slack_event_Edited_ref = None
