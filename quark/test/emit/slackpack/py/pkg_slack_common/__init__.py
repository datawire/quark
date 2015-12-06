from quark_runtime import *

import slack
import pkg
import slack.event




# BEGIN_BUILTIN

class Class(object):
    def _init(self):
        self.id = None
        self.name = None
        self.parameters = None

    def __init__(self, id):
        self._init()
        (self).id = id
        _class(self);

    def getId(self):
        return self.id

    def getName(self):
        return self.name

    def getParameters(self):
        return self.parameters

    def construct(self, args):
        return _construct(self.getId(), args)

    def getFields(self):
        return _fields((self).id)

    def _getClass(self):
        return u"Class"

    def _getField(self, name):
        if ((name) == (u"id")):
            return (self).id

        if ((name) == (u"name")):
            return (self).name

        if ((name) == (u"parameters")):
            return (self).parameters

        return None

    def _setField(self, name, value):
        if ((name) == (u"id")):
            (self).id = value

        if ((name) == (u"name")):
            (self).name = value

        if ((name) == (u"parameters")):
            (self).parameters = value

    

# END_BUILTIN

# BEGIN_BUILTIN

class Field(object):
    def _init(self):
        self.type = None
        self.name = None

    def __init__(self, type, name):
        self._init()
        (self).type = type
        (self).name = name

    def _getClass(self):
        return u"Field"

    def _getField(self, name):
        if ((name) == (u"type")):
            return (self).type

        if ((name) == (u"name")):
            return (self).name

        return None

    def _setField(self, name, value):
        if ((name) == (u"type")):
            (self).type = value

        if ((name) == (u"name")):
            (self).name = value

    

# END_BUILTIN

# BEGIN_BUILTIN


def toJSON(obj):
    result = _JSONObject();
    if ((obj) == (None)):
        (result).setNull();
        return result

    cls = Class(_getClass(obj));
    idx = 0;
    if (((cls).name) == (u"String")):
        (result).setString(obj);
        return result

    if (((((((cls).name) == (u"byte")) or (((cls).name) == (u"short"))) or (((cls).name) == (u"int"))) or (((cls).name) == (u"long"))) or (((cls).name) == (u"float"))):
        (result).setNumber(obj);
        return result

    if (((cls).name) == (u"List")):
        (result).setList();
        list = obj;
        while ((idx) < (len(list))):
            (result).setListItem(idx, toJSON((list)[idx]));
            idx = (idx) + (1)

        return result

    if (((cls).name) == (u"Map")):
        (result).setObject();
        map = obj;
        return result

    (result).setObjectItem((u"$class"), ((_JSONObject()).setString((cls).id)));
    fields = (cls).getFields();
    while ((idx) < (len(fields))):
        (result).setObjectItem((((fields)[idx]).name), (toJSON((obj)._getField(((fields)[idx]).name))));
        idx = (idx) + (1)

    return result

# END_BUILTIN

# BEGIN_BUILTIN


def fromJSON(cls, json):
    if (((json) == (None)) or ((json).isNull())):
        return None

    idx = 0;
    if (((cls).name) == (u"List")):
        list = (cls).construct(_List([]));
        while ((idx) < ((json).size())):
            (list).append(fromJSON(((cls).parameters)[0], (json).getListItem(idx)));
            idx = (idx) + (1)

        return list

    fields = (cls).getFields();
    result = (cls).construct(_List([]));
    while ((idx) < (len(fields))):
        f = (fields)[idx];
        idx = (idx) + (1)
        if ((((f).type).name) == (u"String")):
            s = ((json).getObjectItem((f).name)).getString();
            (result)._setField(((f).name), (s));
            continue;

        if ((((f).type).name) == (u"float")):
            flt = ((json).getObjectItem((f).name)).getNumber();
            (result)._setField(((f).name), (flt));
            continue;

        if ((((f).type).name) == (u"int")):
            if (not (((json).getObjectItem((f).name)).isNull())):
                i = int(round(((json).getObjectItem((f).name)).getNumber()));
                (result)._setField(((f).name), (i));

            continue;

        if ((((f).type).name) == (u"bool")):
            if (not (((json).getObjectItem((f).name)).isNull())):
                b = ((json).getObjectItem((f).name)).getBool();
                (result)._setField(((f).name), (b));

            continue;

        (result)._setField(((f).name), (fromJSON((f).type, (json).getObjectItem((f).name))));

    return result

# END_BUILTIN


def main():
    cli = slack.Client(None, u"fake-token", pkg.Handler());
    (cli).onWSMessage(None, u"{\"type\": \"hello\"}");
    (cli).onWSMessage(None, u"{\"type\": \"message\", \"user\": \"uid-1\", \"channel\": \"chanel-1\"}");


def _construct(className, args):
    if ((className) == (u"Class")):
        return Class((args)[0])

    if ((className) == (u"Field")):
        return Field((args)[0], (args)[1])

    if ((className) == (u"List<Object>")):
        return _List()

    if ((className) == (u"List<Field>")):
        return _List()

    if ((className) == (u"List<Class>")):
        return _List()

    if ((className) == (u"List<String>")):
        return _List()

    if ((className) == (u"Map<Object,Object>")):
        return _Map()

    if ((className) == (u"Map<String,Object>")):
        return _Map()

    if ((className) == (u"slack.event.SlackEvent")):
        return slack.event.SlackEvent()

    if ((className) == (u"slack.event.SlackError")):
        return slack.event.SlackError()

    if ((className) == (u"slack.event.Hello")):
        return slack.event.Hello()

    if ((className) == (u"slack.event.Message")):
        return slack.event.Message()

    if ((className) == (u"slack.event.Edited")):
        return slack.event.Edited()

    if ((className) == (u"slack.User")):
        return slack.User((args)[0], (args)[1])

    if ((className) == (u"slack.Channel")):
        return slack.Channel((args)[0], (args)[1])

    if ((className) == (u"slack.Client")):
        return slack.Client((args)[0], (args)[1], (args)[2])

    if ((className) == (u"pkg.Handler")):
        return pkg.Handler()

    return None


def _fields(className):
    if ((className) == (u"Class")):
        return _List([Field(Class(u"String"), u"id"), Field(Class(u"String"), u"name"), Field(Class(u"List<Class>"), u"parameters")])

    if ((className) == (u"Field")):
        return _List([Field(Class(u"Class"), u"type"), Field(Class(u"String"), u"name")])

    if ((className) == (u"List<Object>")):
        return _List([])

    if ((className) == (u"List<Field>")):
        return _List([])

    if ((className) == (u"List<Class>")):
        return _List([])

    if ((className) == (u"List<String>")):
        return _List([])

    if ((className) == (u"Map<Object,Object>")):
        return _List([])

    if ((className) == (u"Map<String,Object>")):
        return _List([])

    if ((className) == (u"slack.event.SlackEvent")):
        return _List([Field(Class(u"String"), u"type"), Field(Class(u"slack.User"), u"user"), Field(Class(u"slack.Channel"), u"channel"), Field(Class(u"String"), u"timestamp")])

    if ((className) == (u"slack.event.SlackError")):
        return _List([Field(Class(u"String"), u"type"), Field(Class(u"slack.User"), u"user"), Field(Class(u"slack.Channel"), u"channel"), Field(Class(u"String"), u"timestamp"), Field(Class(u"int"), u"code"), Field(Class(u"String"), u"text")])

    if ((className) == (u"slack.event.Hello")):
        return _List([Field(Class(u"String"), u"type"), Field(Class(u"slack.User"), u"user"), Field(Class(u"slack.Channel"), u"channel"), Field(Class(u"String"), u"timestamp")])

    if ((className) == (u"slack.event.Message")):
        return _List([Field(Class(u"String"), u"type"), Field(Class(u"slack.User"), u"user"), Field(Class(u"slack.Channel"), u"channel"), Field(Class(u"String"), u"timestamp"), Field(Class(u"String"), u"subtype"), Field(Class(u"bool"), u"hidden"), Field(Class(u"String"), u"text"), Field(Class(u"slack.event.Edited"), u"edited")])

    if ((className) == (u"slack.event.Edited")):
        return _List([Field(Class(u"slack.User"), u"user"), Field(Class(u"String"), u"timestamp")])

    if ((className) == (u"slack.User")):
        return _List([Field(Class(u"slack.Client"), u"client"), Field(Class(u"String"), u"user")])

    if ((className) == (u"slack.Channel")):
        return _List([Field(Class(u"slack.Client"), u"client"), Field(Class(u"String"), u"channel")])

    if ((className) == (u"slack.Client")):
        return _List([Field(Class(u"Runtime"), u"runtime"), Field(Class(u"String"), u"token"), Field(Class(u"slack.SlackHandler"), u"handler"), Field(Class(u"int"), u"event_id"), Field(Class(u"WebSocket"), u"socket")])

    if ((className) == (u"pkg.Handler")):
        return _List([])

    return None


def _class(cls):
    if (((cls).id) == (u"Class")):
        (cls).name = u"Class"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"Field")):
        (cls).name = u"Field"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"List<Object>")):
        (cls).name = u"List"
        (cls).parameters = _List([Class(u"Object")])
        return

    if (((cls).id) == (u"List<Field>")):
        (cls).name = u"List"
        (cls).parameters = _List([Class(u"Field")])
        return

    if (((cls).id) == (u"List<Class>")):
        (cls).name = u"List"
        (cls).parameters = _List([Class(u"Class")])
        return

    if (((cls).id) == (u"List<String>")):
        (cls).name = u"List"
        (cls).parameters = _List([Class(u"String")])
        return

    if (((cls).id) == (u"Map<Object,Object>")):
        (cls).name = u"Map"
        (cls).parameters = _List([Class(u"Object"), Class(u"Object")])
        return

    if (((cls).id) == (u"Map<String,Object>")):
        (cls).name = u"Map"
        (cls).parameters = _List([Class(u"String"), Class(u"Object")])
        return

    if (((cls).id) == (u"slack.event.SlackEvent")):
        (cls).name = u"slack.event.SlackEvent"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.event.SlackError")):
        (cls).name = u"slack.event.SlackError"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.event.Hello")):
        (cls).name = u"slack.event.Hello"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.event.Message")):
        (cls).name = u"slack.event.Message"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.event.Edited")):
        (cls).name = u"slack.event.Edited"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.User")):
        (cls).name = u"slack.User"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.Channel")):
        (cls).name = u"slack.Channel"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"slack.Client")):
        (cls).name = u"slack.Client"
        (cls).parameters = _List([])
        return

    if (((cls).id) == (u"pkg.Handler")):
        (cls).name = u"pkg.Handler"
        (cls).parameters = _List([])
        return

    (cls).name = (cls).id
