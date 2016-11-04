module Quark
  #
  # List<String,int>
  #
  def self.list_int___init__
    list = []
    list
  end
  def self.list_int___get__(list, key)
    list[key]
  end
  def self.list_int___set__(list, key, value)
    list[key] = value
  end
  def self.list_int___len__(list)
    list.length
  end
  def self.list_int_append(list, value)
    list.push(value)
  end
  def self.list_int_extend(list, another)
    list.push(*another)
  end
end
