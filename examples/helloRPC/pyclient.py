# Python Hello Client example

from quark_threaded_runtime import get_runtime
import hello


def main():
    runtime = get_runtime()

    client = hello.HelloClient(runtime, "http://127.0.0.1:8910/hello")
    request = hello.Request()
    request.text = "Hello from Python!"
    print "Request says %r" % request.text

    response = client.hello(request)
    if response is None:
        print "No response!"
    else:
        print "Response says %r" % response.result


if __name__ == '__main__':
    main()
