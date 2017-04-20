# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    @storage = [0,0,0,0,0,0,0,0,0,0] # arbitrary, has 10 spots (capacity) - size is how many spots are filled
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    raise "bad things" if @size == @storage.length
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    raise "bad things" if @size == 0
    # @storage[@size-1] = 0
    @size -= 1
  end

  def include?(value)
    @size.times do |i|
      return true if @storage[i] == value
    end
    return false
  end

  def size
    return @size
  end

  def max
    largest = 0
    @size.times do |i|
      if @storage[i] > largest
        largest = @storage[i]
      end
    end
    return largest
  end

  def to_s
    str = ""
    @size.times do |i|
      str += "#{@storage[i]}, "
    end
    return "[#{str[0..-3]}]"
  end
end
