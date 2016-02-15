module DatawireQuarkCore
  require 'net/http'
  require 'uri'
  require 'json'

  def self.print(message)
    Kernel.print message == nil ? 'null' : message, "\n"
  end

  def self.urlencode(hash)
    URI.encode_www_form hash
  end

  def self.split(string, separator)
    return ['', ''] if string == separator
    result = string.split(separator)
    #result = [''] + result if string.start_with? separator
    result = result + [''] if string.end_with? separator

    result
  end

  def self.now
    (Time.now.to_f * 1000).round
  end

  class List < Array
    def to_s
      '[' + map(&:to_s).join(', ') + ']'
    end
  end

  class JSONObject
    attr_accessor :value

    def initialize(value=nil)
      @value = value
    end

    def self.parse(json)
      new JSON.parse("[#{json}]")[0]
    end

    def ==(other)
      value == other.value
    end

    def toString
      value.to_json
    end

    def size
      isList || isObject ? value.size : 1
    end

    def getType
      case @value
        when Hash
          'object'
        when Array
          'list'
        when String
          'string'
        when Numeric
          'number'
        when true, false
          'bool'
        when nil
          'null'
        else
          raise RuntimeError, "Unknown JSONObject type #{@value.inspect}"
      end
    end

    def set(value)
      @value = value

      self
    end

    # Object

    def isObject
      value.is_a? Hash
    end

    def setObject
      @value = {}

      self
    end

    def getObjectItem(key)
      return undefined unless isObject and value.key? key

      self.class.new value[key]
    end

    def setObjectItem(key, item)
      setObject unless isObject
      value[key] = item.value

      self
    end

    # List

    def isList
      value.is_a? Array
    end

    def setList
      @value = List.new

      self
    end

    def getListItem(index)
      return undefined unless isList and (0...size).include? index

      self.class.new value[index]
    end

    def setListItem(index, item)
      setList unless isList
      value[index] = item.value

      self
    end

    # String

    def isString
      value.is_a? String
    end

    def getString
      return nil unless isString

      value
    end

    alias_method :setString, :set

    # Number

    def isNumber
      value.is_a? Numeric
    end

    def getNumber
      return nil unless isNumber

      value
    end

    alias_method :setNumber, :set

    # Bool

    def getBool
      return nil unless isBool

      value
    end

    def isBool
      [true, false].include? value
    end

    alias_method :setBool, :set

    # Null

    def isNull
      value == nil
    end

    def setNull
      @value = nil

      self
    end

    # Undefined

    UNDEFINED = Class.new

    def isUndefined
      value == undefined
    end

    def isDefined
      not isUndefined
    end

    def undefined
      self.class.new UNDEFINED
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

  def self.url_get(url)
    Net::HTTP.get(URI(url))
  end

  def self.default_codec
    nil # TODO
  end
end
