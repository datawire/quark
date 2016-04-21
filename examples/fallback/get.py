import fallback, sys

fallback_timeout = 1.0
total_timeout = 3.0

cli = fallback.Client()
content = cli.get(sys.argv[1:], fallback_timeout)

content.await(total_timeout)

if content.isFinished():
    print content.body
elif content.getError():
    print >> sys.stderr, "Error:", content.getError()
else:
    print >> sys.stderr, "timed out"
