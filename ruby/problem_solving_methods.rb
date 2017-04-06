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


def fib
# Define a method that takes in a number as a parameter.
# Create an array to hold fib numbers with the first two populated.
# In a loop, generate fib numbers in order and keep adding them to the array until the array's length is equal to the given number.
# Return the array.
end

