# Should return the index position of 
# the given number in the array or nil if not present.

my_array = [21, 45, 25, 6, 2]

# Define a method that takes an array and an integer
def search (array, number)

  # Create an empty array that will hold our generated index positions
  index_positions = []

  # Loop through the given array. and push an index position for each item 
  # in the array, starting at 0

  counter = 0

  for i in array 
    index_positions.push(counter)
    counter += 1
  end

  return index_positions

end

p search(my_array, 25)
