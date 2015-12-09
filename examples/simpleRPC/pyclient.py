# Python Hello Client example

from quark_threaded_runtime import get_threaded_runtime as get_runtime
import hello


def main():
    runtime = get_runtime()
    runtime.launch()

    client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hellopy")
    request = hello.Request()
    request.requestyStuff = "Oh hai!"
    print "Request says %r" % request.requestyStuff

    response = client.hello(request)
    print "Response says %r" % response.responsyStuff

    runtime.finish()


if __name__ == '__main__':
    main()
