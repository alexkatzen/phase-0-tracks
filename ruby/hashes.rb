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
    second_fav_color: nil,
    third_fav_color: nil
  }
}

# Add a method to print out the client details
def print_details(client_details)
  client_name = client_details[:client_name]
  client_age = client_details[:client_age]
  children = client_details[:children]
  theme = client_details[:theme]
  rooms = client_details[:rooms].join(", ")
  fav_color = client_details[:fav_colors][:fav_color]
  second_fav_color = client_details[:fav_colors][:second_fav_color]
  third_fav_color = client_details[:fav_colors][:third_fav_color]
  puts ""
  puts "AK Interiors: Client Details"
  puts ""
  puts "client_name: #{client_name}"
  puts "client_age: #{client_age}"
  puts "children: #{children}"
  puts "theme: #{theme}"
  puts "rooms: #{rooms}"
  puts "fav_color: #{fav_color}"
  puts "second_fav_color: #{second_fav_color}"
  puts "third_fav_color: #{third_fav_color}"
  puts ""
end

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
  puts "What is the client's favorite color?"
  client_details[:fav_colors][:fav_color] = gets.chomp.downcase
  if client_details[:fav_colors][:fav_color] == ""
    client_details[:fav_colors][:fav_color] = "(None provided)"
  end

  puts "Second favorite color?"
  client_details[:fav_colors][:second_fav_color] = gets.chomp.downcase
  if client_details[:fav_colors][:second_fav_color] == ""
    client_details[:fav_colors][:second_fav_color] = "(None provided)"
  end

  puts "Third favorite color?"
  client_details[:fav_colors][:third_fav_color] = gets.chomp.downcase
  if client_details[:fav_colors][:third_fav_color] == ""
    client_details[:fav_colors][:third_fav_color] = "(None provided)"
  end
    
# Print a summary of the client details
print_details(client_details)

# Ask the user if there are any details they would like to update?
puts "Would you like to make edits? (y/n)"
answer = gets.chomp 
if answer == "y"

  puts "Please enter the label of the detail you would like to update, otherwise type \'none\'"
  nswer = gets.chomp.downcase

  # If the user indicates that there are details to update, ask which detail to update
  case answer 
    when "client_name"
    puts "What would you like to set #{answer} to?" 
    client_details[:client_name] = gets.chomp

    when "client_age"
    puts "What would you like to set #{answer} to?" 
    client_details[:client_age] = gets.chomp

    when "children"
    puts "What would you like to set #{answer} to?" 
    client_details[:children] = gets.chomp

    when "theme"
    puts "What would you like to set #{answer} to?" 
    client_details[:theme] = gets.chomp
    
    when "rooms"
    puts "What would you like to set #{answer} to?" 
    client_details[:rooms] = gets.chomp

    when "fav_color"
    puts "What would you like to set #{answer} to?" 
    client_details[:fav_color] = gets.chomp

    when "second_fav_color"
    puts "What would you like to set #{answer} to?" 
    client_details[:second_fav_color] = gets.chomp

    when "third_fav_color"
    puts "What would you like to set #{answer} to?" 
    client_details[:third_fav_color] = gets.chomp
  end
else
  puts "Thank you. Goodbye!"
  exit
end
  # Ask the user for the new value
  # Set the new value at the corresponding key
  #
    # if they respond 'add', add rooms to the hash with a loop, one at a time until they type 'done'
    # if they respond 'remove', print the current list of rooms, ask which room to remove, or 'done' to quit
      # remove entered room

# Print a summer of the updated client details, and exit
print_details(client_details)
exit