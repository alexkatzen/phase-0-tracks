# Release 0: Implement a Simple Search - - - - - - - - - - #

# Should return the index position of 
# the given number in the array or nil if not present.

my_array = [21, 45, 25, 6, 2]

# Define a method that takes an array and an integer
def search (array, number)

  # Create an empty hash that will map the 
  # items in the given array to their index positions
  index_positions = {}

  # Loop through the given array, add a key to the hash for each item in the array
  # with a value of it's index position
  counter = 0
  
  for i in array 
    index_positions[i] = counter
    counter += 1
  end
  
  return index_positions[number]

end

p search(my_array, 25)
p search(my_array, 21)
p search(my_array, 5)



# Release 1: Calculate Fibonacci Numbers - - - - - - - - - - #

# Define a method that takes in a number as a parameter.
def fib(number2_or_greater)

  # Create an array to hold fib numbers with the first 2 populated.
  fib_numbers = [0, 1]

  # Keep track of the length of the fib_numbers array
  fib_number_count = fib_numbers.length

  # Until the desired number of fib numbers are generated, keep adding fib numbers
  until fib_number_count == number
    fib_numbers.push(fib_numbers[-1]+fib_numbers[-2])
    
    #update the fib_number_count
    fib_number_count = fib_numbers.length
  end

  # Return the array.
  return fib_numbers

end

p fib(100)



# Release 2: Sort an Array - - - - - - - - - - #

# Insertion Sort

# for each number in the array _except_ the first (the first can be considered 'sorted'):
  
  # Assign a variable 'element' to the number at the current place in the unsorted portion of the list.
  # Assign a variable 'current_index' to the _index position_ of the 'element'.

  # Until the number to the left of 'element' is _less_ than 'element' do the following:
    # Shift the elements in the array to the left.
    # Subtract 1 from 'current_index' to iterate to the next number.

  # Insert the element at the updated current index.



