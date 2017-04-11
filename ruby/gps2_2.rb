# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

# steps: 
  
# First step define a method that takes in a string as an argument
def create_grocery_list(words_seperated_by_spaces)

  # Use a string method to to create an array determined by words separated by spaces.
  grocery_keys = words_seperated_by_spaces.split

  # Iterate over the array to create keys and default values
  grocery_list = Hash[ grocery_keys.map { |k| [k, nil] } ] 

  # print the list to the console using print method (we write)


# output: [what data type goes here, array or hash?]
  return grocery_list
end

p create_grocery_list("eggs cereal milk pizza")



# - - - - 

# Method to add an item to a list

  # Create a method with 3 parameters: list, item name, and optional quantity

  # steps:
    # Check to see if the item name is one of the keys in the hash
      # If the key is in the hash
        # print an error message: item is already in the hash
      # If the key is not in the hash
        # Add the item:
          # hash[item name] = optional quantity

  # output:
    # Return the hash.


# - - - - 

# Method to remove an item from the list
# input: the hash, item (key)
# steps:
  # if the key is in the hash
    # remove the item
  # else if the item is not in the hash
    # print an error message.

# output:
  # Return the hash

# - - - - 


# Method to update the quantity of an item
# input: the hash, the desired item to update, updated quantity
# steps:
  # If the item is in the hash
    # Update the value at that key
  # else if the item is not in the hash
    # print an error message.

# output:
  # Return the hash

# - - - - 


# Method to print a list and make it look pretty
# input: the hash
# steps:
  # iterate over the hash
    # print the key and it's value
# output:
  # Printed output
