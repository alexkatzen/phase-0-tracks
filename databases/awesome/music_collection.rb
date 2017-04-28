# MUSIC COLLECTION

# require gems
require 'sqlite3'
require 'faker'

# create the SQLite3 database
db = SQLite3::Database.new("music.db")

# setting an instance attribute method on our database instance to return hashes when queried (ORM)
db.results_as_hash = true

# create a table to hold albums
create_albums_table = <<-SQL
  CREATE TABLE IF NOT EXISTS albums(
    id INTEGER PRIMARY KEY,
    album_name VARCHAR (255),
    artist VARCHAR(255),
    genre VARCHAR(255),
    year_released INT,
    date_added TEXT
  )
SQL

db.execute(create_albums_table)

# add a test album
# db.execute( "INSERT INTO albums(album_name, artist, genre, year_released, date_added) VALUES ('Still Waters Run Deep', 'FourTops', 'Soul', 1970, 1231231)" )

# Method to add an album
def add_album(db, album_name, artist, genre, year_released)
  date_added = Time.new.to_s[0..18]
  db.execute("INSERT INTO albums(album_name, artist, genre, year_released, date_added) VALUES (?, ?, ?, ?, ?)", [album_name, artist, genre, year_released, date_added])
end

# Create a method for viewing all the albums
get_albums = db.execute("SELECT * FROM albums")

# Clean up each of the hashes returned
get_albums.each do |album_hash|
  album_hash.keep_if{|key, value| key.class == String}
end

# Get the first hash to pass into the heading method
first_hash = get_albums[0]

# Method to make a heading
def album_heading(hash)

  # create a variable to hold the heading string
  heading = ""

  # For each Key in the hash:
  hash.each do |key, value|
    heading += "| "
    spaces_left = 24

    # Iterate through each character in that key
    key.each_char do |c|
      heading += c
      spaces_left -=1
    end

    # Add spaces remaining in counter
    while spaces_left > 0
      heading += " "
      spaces_left -=1
    end
  end
  return heading
end

puts album_heading(first_hash)

# Create a method that takes in an array (takes in the array of hashes)
def list_albums(arr)
# For each hash in the array
  # Iterate through the hash (each album):
    # Create a variable to hold the row string
    #row = ""
    # For each key, value in the hash:
      # row += "|"
      # Set a counter to keep track of spaces left
      # Iterate through each character in the key's value
        # add the character to the row string
        # subtract 1 from the counter
      # Add spaces remaining in counter
    # Return the row
end


# Method to create an album
def create_album(db)

  editing = true
  album = { "album name" => nil, "artist" => nil, "genre"=> nil, "year released" => nil }

  puts "What is the name of the album?"
  album["album name"] = gets.chomp

  puts "Which artist is this album by?"
  album["artist"] = gets.chomp

  puts "What genre is this album?"
  album["genre"] = gets.chomp

  puts "What year was this album released"
  album["year released"] = gets.chomp

  while editing != false
    puts ""
    puts "Here's the album as entered so far:"
    puts ""

    album.keys.each_with_index do |info, index|
      puts "#{index} - #{info.upcase}... #{album[info]}"
    end
    # About each_with_index: https://apidock.com/ruby/Enumerable/each_with_index
    puts ""

    # puts "To add the album as-is, type 'add'. Or, type the number of the info you want to edit. otherwise type 'q' to quit without saving."
    puts "Type 'add' to save the album as shown"
    puts ""
    puts "OR:"
    puts ""
    puts "Type the number of the detail you would like to edit"
    puts "Type 'q' to quit the album adder without saving"

    answer = gets.chomp.downcase
    case answer
    when '0'
      puts "What is the name of this album?"
      album["album name"] = gets.chomp
    when '1'
      puts "Which artist is this album by?"
      album["artist"] = gets.chomp
    when '2'
      puts "What genre is this album?"
      album["genre"] = gets.chomp
    when '3'
      puts "What year was this album released?"
      album["year released"] = gets.chomp
    when 'add'
      add_album(db, album["album name"], album["artist"], album["genre"], album["year released"])
      editing = false
    when 'q'
      editing = false
    end
  end # end loop

end

# Create a method for editing an album




# DRIVER CODE:
loop do
  puts ""
  puts ""
  puts "MUSIC MANAGER v.1 :D!"
  puts "— "*21
  puts "What would you like to do?"
  puts ""
  puts "type '1' to view your albums"
  puts "type '2' to add an album"

  answer = gets.chomp
  case answer
  when '2'
    create_album(db)
  else
    puts ""
    puts ""
    puts "Sorry, I didn't get that."
    puts Faker::ChuckNorris.fact
  end
end