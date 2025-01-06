# Part 1

# Define a method to sum all elements in an array
def sum(arr)
  arr.sum # Corrected typo from 'arr.su' to 'arr.sum'
end

def max_2_sum(arr)
  if arr.empty? # Check if the array is empty
    return 0 # If the array is empty, return 0 as there are no elements to sum
  elsif arr.length == 1 # Check if the array contains only one element
    return arr[0] # If there's only one element, return that element as the result
  else
    ghost_arr = arr.sort.reverse # Sort the array in descending order
    return ghost_arr[0] + ghost_arr[1] # Add the two largest elements and return their sum
  end
end

def sum_to_n?(arr, n)
  arr.each_with_index do |elem1, i| # Iterate over each element in the array with its index
    arr.each_with_index do |elem2, j| # Nested iteration over the array with index
      next if i == j # Skip if both indices are the same (to avoid using the same element twice)
      return true if elem1 + elem2 == n # Return true if the sum of two elements equals n
    end
  end
  false # If no pair is found that sums to n, return false
end

# Part 2
def hello(name)
  "Hello, #{name}" # Create a string that includes the value of the variable `name` using string interpolation
end

def starts_with_consonant?(s)
  /^[^aeiou\W]/i.match?(s) # Checks if the string `s` starts with a consonant (non-vowel character) and is not a non-word character (e.g., symbols or spaces)
end

def binary_multiple_of_4?(s)
  /^[01]*00$/.match?(s) || s == '0' # Checks if the string `s` satisfies one of the following conditions:
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  # Creates getter and setter methods for the `isbn` and `price` attributes.

  def initialize(isbn, price)
    # Constructor method to initialize `isbn` and `price` attributes.

    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    # Ensures `isbn` is not empty, raises an error if it is.

    raise ArgumentError, 'Price must be greater than 0' if price <= 0
    # Ensures `price` is a positive value, raises an error otherwise.

    @isbn = isbn
    # Sets the instance variable `@isbn` with the provided value.

    @price = price
    # Sets the instance variable `@price` with the provided value.
  end

  def price_as_string
    format('$%.2f', @price)
    # Returns the `price` formatted as a string in currency format, with two decimal places.
  end
end

