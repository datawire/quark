# Ruby Hello Server example

require 'hello'


class HelloImpl

    def hello(request)
        res = ::Quark.hello.Response.new

        # Uncomment the next line to simulate a long request processing
        # time and force a request timeout to occur for the client.
        # sleep 5

        res.result = "Responding to [%s] from Ruby" % request.text
        res.finish(nil)
        return res
    end
end

def main()
    implementation = HelloImpl.new
    server = ::Quark.hello.HelloServer.new(implementation)
    server.serveHTTP("http://127.0.0.1:8910/hello")
end

if __FILE__ == $0
  main()
end
