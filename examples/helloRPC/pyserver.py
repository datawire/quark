# Python Hello Server example

import hello


class HelloImpl(object):

    def hello(self, request):
        res = hello.Response()
        res.result = "Responding to [%s] from Python" % request.text
        res.finish(None)
        return res


def main():
    implementation = HelloImpl()
    server = hello.HelloServer(implementation)
    server.serve("http://127.0.0.1:8910/hello")


if __name__ == '__main__':
    main()
