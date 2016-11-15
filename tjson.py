import qjson

class Handler:

    def __init__(self):
        self.indent = 0

    def put(self, msg):
        print "%s%s" % ("  "*self.indent, msg)

    def visitString(self, s):
        self.put("STRING: %s" % s)

    def visitBool(self, b):
        self.put("BOOL: %s" % b)

    def visitNull(self):
        self.put("NULL")

    def visitInteger(self, n):
        self.put("INT: %s" % n)

    def visitFloat(self, f):
        self.put("FLOAT: %s" % f)

    def enterArray(self):
        self.put("[")
        self.indent += 1

    def leaveArray(self):
        self.indent -= 1
        self.put("]")

    def enterObject(self):
        self.put("{")
        self.indent += 1

    def leaveObject(self):
        self.indent -= 1
        self.put("}")

def parse(json):
    consumed = qjson.parse_value(json, Handler(), 0, len(json))
    if consumed == 0: raise ValueError(json)
    return consumed

print parse('[null, [], {}, {"key": true, "blah": [1, 2, 3, 4], "bleh": [1.2, 2.3, 3.4]}, 3, 3.14, ["one", "two", "three"]]')
