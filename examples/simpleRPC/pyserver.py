# Python Hello Server example

from quark_threaded_runtime import get_threaded_runtime as get_runtime
import hello


class HelloImpl(object):

    def hello(self, request):
        res = hello.Response()
        res.responsyStuff = "Responding to [%s]" % request.requestyStuff
        return res


def main():
    runtime = get_runtime()
    implementation = HelloImpl()
    server = hello.HelloServer(runtime, implementation)
    runtime.serveHTTP("http://127.0.0.1:8910/hellopy", server)
    runtime.launch()
    runtime.join()


if __name__ == '__main__':
    main()
