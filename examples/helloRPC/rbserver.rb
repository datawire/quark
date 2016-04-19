# Ruby Hello Server example

require 'hello'
Hello = ::Quark::Hello


class HelloImpl

    def hello(request)
        res = Hello::Response.new

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
    server = Hello::HelloServer.new(implementation)
    server.sendCORS(true)
    print "Ruby HelloRPC server starting\n"
    server.serveHTTP("http://127.0.0.1:8910/hello")
end

if __FILE__ == $0
  main()
end
