# When done, submit this entire file to the autograder.
require 'byebug'
# Part 1

def sum arr
  if arr.length == 0
    return 0
  end
  i = 0
  arr.each { |x| i+=x }
  i
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
  debugger
  hash = Hash.new
  arr.each do |val|
    if hash.key? val
      return true
    else
      hash[n-val] = val
    end
  end
 return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  /^[^AEIOU\W].*/.match(s.upcase) != nil
end

def binary_multiple_of_4? s
  /^(?:0|[01]*00)$/.match(s) != nil
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn == "" or price <= 0.0
      raise ArgumentError
    end
    @isbn = isbn
    @price= price
  end
  
  def price_as_string
    '$%.2f' % @price
  end
end

