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
    raise "bad things" if @size == 0
    largest = @storage[0]
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

# assumptions


# write a method that would belong inside the arraylist class
#
# has a storage array with some values in it
# and it has a size
#
# write a method removeAll(num) removes all occurrences of a particular value that is passed to it as a parameter and returns the modified array
#
#
# if you had 3,12,3,8
#
# call removeAll(3)
#
# get 12,8
#
# nums are not in numerical order
# must preserve original order of numbers
# if list is empty or num is not found, return original list

# def removeAll(num)
#   return @storage if !@storage.include?(num) || @storage.size == 0
#   @size.times do |i|
#     if @storage[i] == num
#       @
#   end
#
#
# end
