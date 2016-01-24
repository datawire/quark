# Python Hello Server example

from quark_threaded_runtime import get_runtime
import hello


class HelloImpl(object):

    def hello(self, request):
        res = hello.Response()

        # Uncomment the next line to simulate a long request processing
        # time and force a request timeout to occur for the client.
        # import time; time.sleep(5)

        res.result = "Responding to [%s] from Python" % request.text
        return res


def main():
    runtime = get_runtime()
    implementation = HelloImpl()
    server = hello.HelloServer(runtime, implementation)
    runtime.serveHTTP("http://127.0.0.1:8910/hello", server)


if __name__ == '__main__':
    main()
