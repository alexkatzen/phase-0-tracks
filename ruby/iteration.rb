# Write Your Own Method That Takes a Block
def status_message 
  puts "This is the default message!"
  yield("Rakey", "Alex")
end

status_message { |name1, name2| puts "#{name1} and #{name2} are working on this!!!" }

# Release 1: DO THE THING

# declare an array...
grocery_list = ["eggs", "milk", "bread", "cereal"]

# declare a hash...
cars = {
  Ford: "Explorer",
  Honda: "Accord",
  Tesla: "S",
  Volkswagon: "Beetle"
}

# using .each on the array
grocery_list.each do |grocery_item| 
  puts "We are in need of #{grocery_item}"
end

# using .each on the hash
cars.each do |brand, model|
  puts "The brand of #{model} is #{brand}."
end

# using .map on the array
fake_grocery_list = grocery_list.map do |grocery_item|
  puts "fake #{grocery_item}"
end

puts grocery_list
puts fake_grocery_list

# using .map! on the array
grocery_list.map! do |grocery_item|
  grocery_item = "Real #{grocery_item}" 
end 

puts grocery_list


# Release 2: Use the Documentation

# - - - - - - - - - - - - 
#ARRAY METHOD: .delete_if
my_array = (1..100).to_a
p my_array
my_array.delete_if {|x| x.even? }
p my_array

# HASH METHOD: .delete_if 
# p cars.delete_if {|brand| brand.length > 4 }


# - - - - - - - - - - - - 
#ARRAY METHOD: .keep_if
my_array2 = (1..100).to_a

p my_array2.keep_if { |number| number%3 == 0 }

#HASH METHOD: .keep_if
puts "TEST: .keep_if - - - - "
# p cars.keep_if { |brand, model| model.length == 1 } 


# - - - - - - - - - - - - 
#ARRAY METHOD .take_while
my_array3 = ["Bravo", "Computer", "DevBootCamp", "cars", "New York", "Berkeley", "a", "c", "c"]

p my_array3
p my_array3.take_while { |item| item.length >= 5}

# HASH METHOD .reject
puts "TEST: .reject - - - - "
p cars.reject {|brand, model| model.include? "c" }


# - - - - - - - - - - - - 
#ARRAY METHOD: .drop_while
my_array4 = (1..100).to_a

puts "My Array 3:"
p my_array4.drop_while {|number| number < 51} 