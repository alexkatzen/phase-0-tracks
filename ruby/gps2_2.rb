# Method to print a list and make it look pretty

# input: the hash
# steps:
  # iterate over the hash
    # print the key and it's value
# output:
  #series of strings with key and its appropriate value
def print_list(grocery_list)
  grocery_list.each do |item_name, quantity|
    puts "You have #{quantity} #{item_name}"
  end
  puts "You are done shopping!"
  puts "-------" #for readability
end

# - - - -
# Method to create a list

# input: string of words separated by spaces
# steps:
  # Use a string method to to create an array determined by words separated by spaces.
  # Iterate over the array to create keys and default values
  # print the list to the console using print method (we write)
  # output: [what data type goes here, array or hash?]
def create_grocery_list(words_seperated_by_spaces)
  grocery_keys = words_seperated_by_spaces.split
  grocery_list = Hash[ grocery_keys.map { |k| [k, 0] } ]
  print_list(grocery_list)
  return grocery_list
end

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
def add_item(grocery_list, item_name, quantity=0)  
 if grocery_list.has_key?(item_name.downcase)
    puts "Item is already in the list"
  else
    grocery_list[item_name.downcase] = quantity
  end
  print_list(grocery_list)
end

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
def remove_item(grocery_list, item_name)
  if grocery_list.has_key?(item_name.downcase)
    grocery_list.delete(item_name)
  else
    puts "Item is not in grocery list"
  end
  print_list(grocery_list)
end

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
def update_quantity(grocery_list, item_name, quantity)
  if grocery_list.has_key?(item_name.downcase)
    grocery_list[item_name] = quantity
  else
    puts "Item is not in grocery list"
  end
  print_list(grocery_list)
end

# - - - -
# test code

some_list = create_grocery_list("eggs carrots apples pizza")
add_item(some_list, "lemonade", 2)
add_item(some_list, "tomatoes", 3)
add_item(some_list, "onions", 1)
add_item(some_list, "Ice Cream", 4)
remove_item(some_list, "lemonade")
update_quantity(some_list, "ice cream", 1)


# Release 4: Reflect

# What did you learn about pseudocode from working on this challenge?
  # Probably the most important takeaway is the value of good pseudocoding within the context of a pair session. It really helps to keep both participants on the same page throughout.

# What are the tradeoffs of using arrays and hashes for this challenge?
  # Both arrays and hashes were needed to complete the challenge. When a simple list of items was needed, an array was used. When associating items with quantities, a hash was the way to go. 

# What does a method return?
  # a method returns either what is implicitly returned on it's last line, or what is returned using the 'return' keyword

# What kind of things can you pass into methods as arguments?
  # Values like integers or strings, data structures like arrays or hashes, optional arguments

# How can you pass information between methods?
  # A method can take a variable who's value was set by another method
  # A method can be called from within another method taking information passed from within the parent method

# What concepts were solidified in this challenge, and what concepts are still confusing?
  # The challenge was good practice in working with arrays and hashes. I'm not sure if we were supposed to practice passing the functionality of methods, but I'd like to have a better understanding of how/why/when to do that (procs?).

