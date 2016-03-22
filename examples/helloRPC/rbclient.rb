require 'hello'

def main(argv)
  # "http://hello.datawire.io/" is the URL of the simple "Hello" cloud
  # microservice run by Datawire, Inc. to serve as a simple first test.
  #
  # You can test completely locally, too:
  # - comment out the http://hello.datawire.io line
  # - uncomment the http://127.0.0.1:8910/hello line
  # - fire up the local version of the server by following the instructions
  # in the file ./README.md.

  # client = Quark.hello.HelloClient.new "http://hello.datawire.io/"
  client = Quark.hello.HelloClient.new "http://127.0.0.1:8910/hello"

  request = Quark.hello.Request.new

  if argv.length > 0
    request.text = str(argv[0])
  else
    request.text = "Hello from Ruby!"
  end

  print "Request says %s" % request.text.inspect

  response = client.hello(request)
  response.await(1.0)
  if not response.isFinished()
      print "No response!"
  elsif not response.getError().nil?
        print "Response failed with %r" % response.getError()
  else
        print "Response says %r" % response.result
  end
end

if __FILE__ == $0
  main(ARGV)
end
