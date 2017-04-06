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

end

p search(my_array, 25)
