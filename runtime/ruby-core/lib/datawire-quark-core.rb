module DatawireQuarkCore
  require 'net/http'

  def self.print(message)
    Kernel.print message == nil ? 'null' : message, "\n"
  end

  class List < Array
    def to_s
      '[' + map(&:to_s).join(', ') + ']'
    end
  end

  class HTTPRequest
    def initialize(url)
      @url = url
      @method = 'GET'
      @body = nil
      @headers = {}
    end

    def getUrl
      @url
    end

    def setMethod(method)
      @method = method

      nil
    end

    def getMethod
      @method
    end

    def setBody(data)
      @body = data

      nil
    end

    def getBody
      @body
    end

    def setHeader(key, value)
      @headers[key.downcase] = value

      nil
    end

    def getHeader(key)
      @headers[key.downcase]
    end

    def getHeaders
      @headers.keys
    end
  end

  class JSONObject
    def self.parse(source)
      nil # TODO
    end
  end

  def self.url_get(url)
    Net::HTTP.get(URI(url))
  end

  def self.default_codec
    nil # TODO
  end
end
