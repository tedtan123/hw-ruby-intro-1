# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    # YOUR CODE HERE
    sum = 0
    arr.each do |i|
        sum += i
    end
    return sum
end

def max_2_sum arr
    # YOUR CODE HERE
    if(arr.length==1 or arr.length ==0)
        return sum(arr)
    else (arr2 = arr.max(2){|a,b| a <=> b}
        return sum(arr2))
    end
end

def sum_to_n? arr, n
    # YOUR CODE HERE
    return false if arr.empty? || n.zero?
    arr.combination(2).any? {|a,b| a+b == n}
end

# Part 2

def hello(name)
    # YOUR CODE HERE
    return "Hello, #{name}"
end

def starts_with_consonant? s
    # YOUR CODE HERE
    if(/\A[^AEIOU\W]/i.match(s) == nil)
        return false
    else
        return true
    end
end

def binary_multiple_of_4? s
    # YOUR CODE HERE
    return false if s.empty?
    num = s.to_i
    if(/\A[0-1]*\Z/.match(s) == nil) # You can match the beginning of the string with \A and the end with \Z. In ruby ^ and $ match also the beginning and end of the line, respectively: to match the entire string with regex
        return false
    elsif num % 4 == 0
        return true
    else return false
    end
end

# Part 3

class BookInStock
    # YOUR CODE HERE
    @isbn = ""
    @price = 0.0
    
    def initialize(isbn,price)
        raise ArgumentError if isbn.empty?
        raise ArgumentError if price <= 0
        @isbn = isbn
        @price = price
    end
    
    def isbn()
       return @isbn
    end
    
    def isbn=(isbn)
       @isbn = isbn
    end
    
    def price()
        return @price
    end
    
    def price=(price)
        @price = price
    end
    
    def price_as_string
       return "$%0.2f"%[@price]
    end
end
