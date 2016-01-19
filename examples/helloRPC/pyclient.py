# Python Hello Client example

import hello
import quarkrt.concurrent

def main():
    client = hello.HelloClient("http://127.0.0.1:8910/hello")
    request = hello.Request()
    request.text = "Hello from Python!"
    print "Request says %r" % request.text

    response = client.hello(request)
    import time
    quarkrt.concurrent.FutureWait().wait(response, 1000) # XXX:  this can go away once we figure out synchronous configuration API
    if not response.isFinished():
        print "No response!"
    elif response.getError() is not None:
        print "Response failed with %r" % response.getError()
    else:
        print "Response says %r" % response.result


if __name__ == '__main__':
    main()
