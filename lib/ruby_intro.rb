# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum()
end

def max_2_sum arr
  if arr.length == 0 then
    return 0
  elsif arr.length == 1 then
    return arr[0]
  else
    new_arr = arr.sort
    return new_arr[-1] + new_arr[-2]    
  end
end

def sum_to_n? arr, n
  if arr.length == 1 then
    return false
  end

  for i in arr
    if (n - i) != i and arr.include?(n - i) then
      return true
    end
  end
  
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0 then
    return false
  end

  if s[0] == "a" or s[0] == "e" or s[0] == "i" or s[0] == "o" or s[0] == "u" or s[0] == "A" or s[0] == "E" or s[0] == "I" or s[0] == "O" or s[0] == "U" then
    return false
  end

  if /\d/.match(s[0]) or /\W/.match(s[0]) then
    return false
  end

  true
end

def binary_multiple_of_4? s
  if s.length == 0 or /\D/.match(s) then
    return false
  end
  
  decimal_form = s.to_i(2)
  if decimal_form % 4 == 0 then
    return true
  end

  false
end

# Part 3

class BookInStock

  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn == "" then
      raise ArgumentError, "isbn must not be an empty string"
    end

    if price <= 0 then
      raise ArgumentError, "price must be greater than 0"
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string()
    price = sprintf("%.2f", @price)
    "$" + price
  end
  
end
