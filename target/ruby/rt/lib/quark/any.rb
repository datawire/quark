module Quark
  #
  # Any
  #
  def self.unsafe(a)
    a
  end

  def self.Any_type(a)
    if a.nil?
      return 0
    elsif a.is_a?(TrueClass) or a.is_a?(FalseClass)
      return 1
    elsif a.is_a?(Fixnum)
      return 2
    elsif a.is_a?(String)
      return 3
    elsif a.is_a?(Float)
      return 4
    elsif a.is_a?(Array)
      return 5
    elsif a.is_a?(Hash)
      return 6
    else
      return -1
    end
  end

  def self.Any_asBool(a)
    if a.is_a?(TrueClass) or a.is_a?(FalseClass)
      return a
    else
      return false
    end
  end

  def self.Any_asInt(a)
    if a.is_a?(Fixnum)
      return a
    else
      return 0
    end
  end

  def self.Any_asString(a)
    if a.is_a?(String)
      return a
    else
      return ""
    end
  end

  def self.Any_asFloat(a)
    if a.is_a?(Float)
      return a
    else
      return 0.0
    end
  end

  def self.Any_asList(a)
    if a.is_a?(Array)
      return a
    else
      return nil
    end
  end

  def self.Any_asMap(a)
    if a.is_a?(Hash)
      return a
    else
      return nil
    end
  end

end
