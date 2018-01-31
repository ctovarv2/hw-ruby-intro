# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
	return 0
  else
	arr.sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
	return 0
  elsif arr.length == 1
	return arr[0]
  else
    sum = 0
	arr.max(2).to_a.each{|x| sum += x}
	return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  #Cheacks if the array is empty or of length 1
  if arr.empty? || arr.length == 1
	return false
  else
	#Returns true if a permutation of 2 digits add up to n
    arr.permutation(2).any?{|x,y| x + y == n}
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  #Checks if string is empty
  if s.empty?
	   return false
  else
		#Cheacks if first character is a letter and if its not a vowel
	   if !(s =~ /\A[aeiouAEIOU]/) && !(s =~ /\A[^a-z, ^A-Z]/)
		     return true
	   else
		     return false
	   end
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  
  #Checks if string is empty or contains a letter
  if s.empty? or !(s !~ /[a-zA-Z, 2-9]/)
    return false
  else
	#Checks if divisible by 4 or if its a single bit(0)
	if ((s =~ /(00)$/) != nil) or ((s =~ /^0${1}/) != nil)
		return true
	end
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE

	#Creates Getters and Setters
	attr_accessor :isbn, :price
	
	#Constructor
	def initialize(isbn, price)
		if isbn.empty?
			raise ArgumentError.new("ISBN argument cannot be empty.")
		end
		if price <= 0.0
			raise ArgumentError.new("Invalid Price argument.")
		end
		@isbn = isbn
		@price = price
	end
	
	
	#Displays Price in correct format
	def price_as_string
		sprintf("$%#.2f", @price)
	end
end
