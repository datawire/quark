# Python Hello Client example

from quark_threaded_runtime import get_runtime
import hello


def main():
    runtime = get_runtime()

    client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")
    request = hello.Request()
    request.text = "Oh hai!"
    print "Request says %r" % request.text

    response = client.hello(request)
    print "Response says %r" % response.result


if __name__ == '__main__':
    main()
