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
        (self).type = ((obj).getObjectItem(u"type")).getString()
        uid = ((obj).getObjectItem(u"user")).getString();
        if ((uid) != (None)):
            (self).user = slack.User(client, uid)

        chid = ((obj).getObjectItem(u"channel")).getString();
        if ((chid) != (None)):
            (self).channel = slack.Channel(client, chid)

        (self).timestamp = ((obj).getObjectItem(u"ts")).getString()

    def dispatch(self, handler):
        (handler).onSlackEvent(self);

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


SlackEvent.slack_event_SlackEvent_ref = slackpack_md.Root.slack_event_SlackEvent_md
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
        super(SlackError, self).load(client, obj);
        (self).code = int(round(((obj).getObjectItem(u"code")).getNumber()))
        (self).text = ((obj).getObjectItem(u"text")).getString()

    def dispatch(self, handler):
        (handler).onSlackError(self);

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


SlackError.slack_event_SlackError_ref = slackpack_md.Root.slack_event_SlackError_md
class Hello(SlackEvent):
    """
    The client successfully connected to the server.
    """
    def _init(self):
        SlackEvent._init(self)

    def __init__(self):
        super(Hello, self).__init__();

    def dispatch(self, handler):
        (handler).onHello(self);

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


Hello.slack_event_Hello_ref = slackpack_md.Root.slack_event_Hello_md
class Message(SlackEvent):
    """
    A message was sent to a channel.
    """
    def _init(self):
        SlackEvent._init(self)
        self.subtype = None
        self.hidden = False
        self.text = None
        self.edited = None

    def __init__(self):
        super(Message, self).__init__();

    def load(self, client, obj):
        super(Message, self).load(client, obj);
        (self).subtype = ((obj).getObjectItem(u"subtype")).getString()
        (self).hidden = ((obj).getObjectItem(u"hidden")).getBool()
        (self).text = ((obj).getObjectItem(u"text")).getString()
        edited = (obj).getObjectItem(u"edited");
        if ((edited).isDefined()):
            (self).edited = Edited()
            ((self).edited).user = slack.User(client, ((edited).getObjectItem(u"user")).getString())
            ((self).edited).timestamp = ((edited).getObjectItem(u"ts")).getString()

    def dispatch(self, handler):
        (handler).onMessage(self);

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


Message.slack_event_Message_ref = slackpack_md.Root.slack_event_Message_md
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


Edited.slack_event_Edited_ref = slackpack_md.Root.slack_event_Edited_md
