import qjson

print qjson.parse(u'{"pi": 3.14}')
print qjson.parse(u'[null, [], {}, {"key": true, "blah": [1, 2, 3, 4], "bleh": [1.2, 2.3, 3.4]}, 3, 3.14, ["one", "two", "three"]]')
