# Python Hello Client example

import sys
import hello
import builtin.concurrent

def main():

    # "http://hello.datawire.io/" is the URL of the simple "Hello" cloud
    # microservice run by Datawire, Inc. to serve as a simple first test.
    #
    # You can test completely locally, too:
    # - comment out the http://hello.datawire.io line
    # - uncomment the http://127.0.0.1:8910/hello line
    # - fire up the local version of the server by following the instructions
    # in the file ./README.md.

    client = hello.HelloClient("http://hello.datawire.io/")
    # client = hello.HelloClient("http://127.0.0.1:8910/hello")

    request = hello.Request()

    if len(sys.argv) > 1:
        request.text = str(sys.argv[1])
    else:
        request.text = "Hello from Python!"

    print "Request says %r" % request.text

    response = client.hello(request)
    import time
    builtin.concurrent.FutureWait().wait(response, 1000) # XXX:  this will go away once we figure out synchronous configuration API
    if not response.isFinished():
        print "No response!"
    elif response.getError() is not None:
        print "Response failed with %r" % response.getError()
    else:
        print "Response says %r" % response.result


if __name__ == '__main__':
    main()
