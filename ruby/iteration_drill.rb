# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----
zombie_stars = ""

zombie_apocalypse_supplies.each do |i| 
  if zombie_apocalypse_supplies.index("#{i}") != zombie_apocalypse_supplies.length-1
    zombie_stars += "#{i} * "
  else
    zombie_stars += "#{i}"
  end
end
# puts zombie_stars


# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----


i = 1
while i < zombie_apocalypse_supplies.length
  supply = zombie_apocalypse_supplies[i]
  current_index = i
  while (current_index > 0 && zombie_apocalypse_supplies[current_index-1].downcase > supply.downcase)
    zombie_apocalypse_supplies[current_index] = zombie_apocalypse_supplies[current_index-1]
    current_index = current_index-1
  end
  zombie_apocalypse_supplies[current_index] = supply
  i +=1
end

puts zombie_apocalypse_supplies


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def supply_checker(arr, item_to_check)
  found = false
  arr.each do |supply|
    if item_to_check.downcase == supply.downcase 
      found = true
    end
  end
  if found == true
    puts "YES, #{item_to_check} was found in the zombie apocalypse supplies"
  else
    puts "Sorry, #{item_to_check} is not in the zombie supplies"
  end
end
supply_checker(zombie_apocalypse_supplies, "hatchet")
supply_checker(zombie_apocalypse_supplies, "Beer")


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def unload_three(arr)
i = 0
new_arr = []  
  while i < 5
    new_arr.push(arr[i])
    i += 1
  end
arr = new_arr
end
#puts unload_three(zombie_apocalypse_supplies)


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]


def unify_arrays(array1, array2) 
unified_array = []
array1.each { |i| unified_array.push(i) }
array2.each { |i| unified_array.push(i) }
unified_array = unified_array.uniq
end

p unify_arrays(zombie_apocalypse_supplies, other_survivor_supplies)


# ----

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

extinct_animals.each do |key, value|

puts "#{key} — #{value}"
puts "*"

end


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----


# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----


# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
