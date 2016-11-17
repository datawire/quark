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
      return 1
    elsif a.is_a?(String)
      return 1
    elsif a.is_a?(Float)
      return 1
    elsif a.is_a?(Array)
      return 2
    elsif a.is_a?(Hash)
      return 3
    else
      return -1
    end
  end

  def self.Any_asBool(a)
    if a.nil?
      return false
    elsif a.is_a?(TrueClass) or a.is_a?(FalseClass)
      return a
    elsif a.is_a?(Fixnum)
      return a != 0
    elsif a.is_a?(String)
      return not(a.empty?)
    elsif a.is_a?(Float)
      return a != 0.0
    else
      return false
    end
  end

  def self.Any_asInt(a)
    if a.nil?
      return 0
    elsif a.is_a?(TrueClass) or a.is_a?(FalseClass)
      if a
        return 1
      else
        return 0
      end
    elsif a.is_a?(Fixnum)
      return a
    elsif a.is_a?(String)
      return 0
    elsif a.is_a?(Float)
      return a.to_i
    else
      return 0
    end
  end

  def self.Any_asString(a)
    if a.nil?
      return ""
    elsif a.is_a?(TrueClass) or a.is_a?(FalseClass)
      if a
        return "true"
      else
        return "false"
      end
    elsif a.is_a?(Fixnum)
      return a.to_s
    elsif a.is_a?(String)
      return a
    elsif a.is_a?(Float)
      return a.to_s
    else
      return ""
    end
  end

  def self.Any_asFloat(a)
    if a.nil?
      return 0.0
    elsif a.is_a?(TrueClass) or a.is_a?(FalseClass)
      if a
        return 1.0
      else
        return 0.0
      end
    elsif a.is_a?(Fixnum)
      return a.to_f
    elsif a.is_a?(String)
      return 0.0
    elsif a.is_a?(Float)
      return a
    else
      return ""
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
