# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  !!arr.combination(2).detect {|x, y| x + y == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  #puts "Char: #{s.chr} Return #{!!s.match(/\A[^aeiou\W]/i)}"
  !!s.match(/\A[^aeiou\W]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #puts "String: #{s}"
  if !!s.match(/[^01]/)
    return false
  end
  #Handle 0 case
  if s.eql? '0'
    return true
  end
  #puts s.split(//).last(2)
  #puts s.split(//).last(2).join.eql? '00'
  s.split(//).last(2).join.eql? '00'
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price
def initialize isbn, price
  raise ArgumentError if isbn.eql? ''
  
  raise ArgumentError if price <= 0
  
  @isbn = isbn
  @price = price
end

def isbn
  @isbn
end

def price
  @price
end

def isbn=(isbn)
  @isbn = isbn
end

def price=(price)
  @price = price
end

def price_as_string
  #puts "$" + "%.2f" % @price
  '$' + "%.2f" % @price
end

end
