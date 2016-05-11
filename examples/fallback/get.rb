require 'fallback'

Fallback = ::Quark::Fallback

def main(argv)
  fallback_timeout = 1.0
  total_timeout = 3.0

  cli = Fallback::Client.new
  content = cli.get(argv, fallback_timeout)

  content.await(total_timeout)

  if content.isFinished
    print content.body
  elsif content.getError
    $stderr.print "Error:", content.getError
  else
    $stderr.print "timed out"
  end
end

if __FILE__ == $0
  main(ARGV)
end
