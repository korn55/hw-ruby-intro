# When done, submit this entire file to the autograder.

# Part 1

# Define a method to sum all elements in an array
def sum(arr)
  arr.su
end

def max_2_sum(arr)
  if arr.empty?  # Check if the array is empty
    return 0     # If the array is empty, return 0 as there are no elements to sum
  elsif arr.length == 1  # Check if the array contains only one element
    return arr[0]        # If there's only one element, return that element as the result
  else
    ghost_arr = arr.sort.reverse  # Sort the array in descending order
    return ghost_arr[0] + ghost_arr[1]  # Add the two largest elements and return their sum
  end
  
end

def sum_to_n?(arr, n)
  arr.each_with_index do |elem1, i|  # Iterate over each element in the array with its index
    arr.each_with_index do |elem2, j|  # Nested iteration over the array with index
      next if i == j  # Skip if both indices are the same (to avoid using the same element twice)
      return true if elem1 + elem2 == n  # Return true if the sum of two elements equals n
    end
  end
  false  # If no pair is found that sums to n, return false
  
end

# Part 2
def hello(name)
  "Hello, #{name}"  # Create a string that includes the value of the variable `name` using string interpolation

end

def starts_with_consonant? s
 
end

def binary_multiple_of_4? s
  
end

def hello(name)
 
end

def starts_with_consonant?(s)
  
end

def binary_multiple_of_4?(s)
  
end

# Part 3

class BookInStock
  
end
