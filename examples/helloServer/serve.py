import quark_twisted_runtime
import hello_server


def main():
    runtime = quark_twisted_runtime.get_twisted_runtime()
    servlet = hello_server.HelloServlet()
    runtime.serveHTTP("http://127.0.0.1:9876/foo", servlet)
    runtime.serveHTTP("http://127.0.0.1:0/foo", servlet)
    runtime.serveHTTP("http://127.0.0.1/foo", servlet)
    runtime.launch()


if __name__ == '__main__':
    main()
