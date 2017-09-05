# When done, submit this entire file to the autograder.

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
  if arr.length < 2
    return false
  end
  
  arr.combination(2).map {|ar| sum(ar)} .select {|s| s == n} .length > 0
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

