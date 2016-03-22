import fallback, sys

timeout = 1.0

cli = fallback.Client()
content = cli.get(sys.argv[1:], timeout)

content.await(timeout)

if content.isFinished():
    print content.body
elif content.getError():
    print >> sys.stderr, "Error:", content.getError()
else:
    print >> sys.stderr, "timed out"
