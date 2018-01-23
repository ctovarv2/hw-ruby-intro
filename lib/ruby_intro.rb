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
	maxElements = arr.max(2)
	maxElements.each{|x| sum += x}
	return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? || arr.length == 1
	return false
  else
    
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
