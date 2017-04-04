# CLIENT DETAILS

# Create an empty hash "client_details" with default values including a nested hash for "fav_colors"
client_details = {
  client_name: nil,
  client_age: nil,
  children: nil,
  theme: nil,
  rooms: [],
  fav_colors: {
    fav_color: nil,
    second_color: nil,
    third_color: nil
  }
}

# Prompt the user for the required information, one question at a time
# Each prompt should populate the corresponding key-value pair in the hash

  # What is the client's name?
  puts "What is this client's name?"
  client_details[:client_name] = gets.chomp
  if client_details[:client_name] == ""
    client_details[:client_name] = "(No name provided)"
  end

  # What is the client's age?
  puts "What is this client's age?"
  client_details[:client_age] = gets.chomp.to_i
  if client_details[:client_age] == ""
    client_details[:client_age] = "(No age provided)"
  end

  # How many children does the client have?
  puts "How many children does the client have?"
  client_details[:children] = gets.chomp.to_i
  if client_details[:children] == ""
    client_details[:children] = 0
  end

  # What is the client's desired decor theme?
  puts "What is the desired theme of the redesign?"
  client_details[:theme] = gets.chomp
  if client_details[:theme] == ""
    client_details[:theme] = "(No theme provided)"
  end

  # Which rooms need help?
  puts "Which rooms need our services?"
  
    # Using a simple loop, populate an array of the desired rooms, one at a time
    while true
      puts "Add a room to redesign. Type \'done\' if finished."
      room = gets.chomp.downcase
      if room == 'done'
        break
      else
        client_details[:rooms] << room
      end
    end

  # What is the client's top three favorite colors?
    # Prompt these three favorite colors one at a time, and add to the "fav_colors" hash

# Print a summary of the client details

# Ask the user if there are any details they would like to update ('y'/'n')'?
  # If the user indicates that there are details to update, ask which detail to update
  # Ask the user for the new value
  # Set the new value at the corresponding key
  # If the user indicates they would like to update the desired rooms, ask if they would like to add or remove a room. ('add'/'remove')?
    # if they respond 'add', add rooms to the hash with a loop, one at a time until they type 'done'
    # if they respond 'remove', print the current list of rooms, ask which room to remove, or 'done' to quit
      # remove entered room

# Print a summer of the updated client details, and exit

puts client_details