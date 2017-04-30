# MUSIC COLLECTION

# require gems
require 'sqlite3'
require 'faker'

# create the SQLite3 database
db = SQLite3::Database.new("music.db")

# setting an instance attribute method on our database instance to return hashes when queried (ORM)
db.results_as_hash = true

# Create a table to hold albums
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

# Method to write an album to the db
def add_album(db, album_name, artist, genre, year_released)
  date_added = Time.new.to_s[0..18]
  db.execute("INSERT INTO albums(album_name, artist, genre, year_released, date_added) VALUES (?, ?, ?, ?, ?)", [album_name, artist, genre, year_released, date_added])
end

# Method to get current albums in the db
def get_current_albums(db)
  get_albums = db.execute("SELECT * FROM albums")
  # Clean up each of the hashes returned
  get_albums.each do |album_hash|
    album_hash.keep_if{|key, value| key.class == String}
  end
  return get_albums
end

get_albums = get_current_albums(db)

# Get the first hash to pass into the heading method
first_hash = get_albums[0]

# method to make a heading
def album_heading(hash)

  heading = ""

  # For each Key in the hash:
  hash.each do |key, value|
    heading += "| "
    spaces_left = 24

    # Iterate through each character
    key.each_char do |c|
      heading += c.upcase
      spaces_left -=1
    end

    # Add remaining spaces in row
    while spaces_left > 0
      heading += " "
      spaces_left -=1
    end
  end

  puts heading
  puts ""
end

# method to print ONE album as a row
def make_album_row(hsh)

  row = ""
  #iterate through each value in the hash creating a column each time
  hsh.each_value do |value|

    spaces_left = 24
    row += "| "

    value.to_s.each_char do |c|
      row += c
      spaces_left -=1
    end
    while spaces_left > 0
      row += " "
      spaces_left -=1
    end

  end # end hash iteration
  puts row
end

# method to print ALL albums
def list_albums(arr)
  # For each hash in the array
  arr.each do |album_hash|
    make_album_row(album_hash)
  end # end array iteration
end

# method to CREATE an album
def create_album(db)

  editing = true
  album = { "album name" => nil, "artist" => nil, "genre"=> nil, "year released" => nil }
  puts ""
  puts ""
  puts "What is the name of the new album?"
  album["album name"] = gets.chomp
  puts ""
  puts "Which artist is this album by?"
  album["artist"] = gets.chomp
  puts ""
  puts "What genre is this album?"
  album["genre"] = gets.chomp
  puts ""
  puts "What year was this album released"
  album["year released"] = gets.chomp

  while editing != false
    puts ""
    puts "— "*21
    puts "Here's the album as entered so far:"
    puts ""

    album.keys.each_with_index do |info, index|
      puts "#{index} - #{info.upcase}... #{album[info]}"
    end
    # About each_with_index: https://apidock.com/ruby/Enumerable/each_with_index
    puts ""

    # puts "To add the album as-is, type 'add'. Or, type the number of the info you want to edit. otherwise type 'q' to quit without saving."
    puts "--> Type [ 'add' ] to save the album as shown"
    puts "--> Type the [ # ] of a detail to update"
    puts "--> Type [ 'q' ] to quit without saving"
    puts ""
    puts ""
    answer = gets.chomp.downcase
    case answer
    when '0'
      puts ""
      puts "What is the name of this album?"
      puts ""
      album["album name"] = gets.chomp
    when '1'
      puts ""
      puts "Which artist is this album by?"
      puts ""
      album["artist"] = gets.chomp
    when '2'
      puts ""
      puts "What genre is this album?"
      puts ""
      album["genre"] = gets.chomp
    when '3'
      puts ""
      puts "What year was this album released?"
      puts ""
      album["year released"] = gets.chomp
    when 'add'
      add_album(db, album["album name"], album["artist"], album["genre"], album["year released"])
      editing = false
      puts "Album Added!"
    when 'q'
      editing = false
    end
  end # end loop
end

# method to EDIT an album
def edit_album(db, first_hash, get_albums)

  # List all the albums in the db
  album_heading(first_hash)
  get_albums = get_current_albums(db)
  list_albums(get_albums)

  # Ask the user to enter the id of the album they would like to edit
  puts "— "*21
  puts "Please enter the id of the album you want to edit"
  album_id = gets.chomp.to_i
  selected_album = db.execute("SELECT * FROM albums WHERE id = ?", [album_id])
  selected_album[0].keep_if{|key, value| key.class == String}
  puts ""
  puts "Here's your album:"
  selected_album[0].keys.each_with_index do |info, index|
    puts "#{index} - #{info.to_s.upcase}... #{selected_album[0][info]}"
  end
  puts ""
  puts "Enter the # of the info to change"
  puts "OR"
  puts "type 'x' to DELETE the album"
  puts "What would you like to do?"
  answer = gets.chomp
  case answer
  when '0'
    puts ""
    puts "Sorry, the album id can't be changed."
  when '1'
    puts ""
    puts "What is the name of this album?"
    answer = gets.chompgi
    db.execute("UPDATE albums SET album_name=? WHERE id=?", [answer, album_id])
    puts ""
    puts "Album name updated!"
  when '2'
    puts ""
    puts "Which artist is this album by?"
    answer = gets.chomp
    db.execute("UPDATE albums SET artist=? WHERE id=?", [answer, album_id])
    puts ""
    puts "Artist updated!"
  when '3'
    puts ""
    puts "What genre is this album?"
    answer = gets.chomp
    db.execute("UPDATE albums SET genre=? WHERE id=?", [answer, album_id])
    puts ""
    puts "Genre updated!"
  when '4'
    puts ""
    puts "What year was this album released?"
    answer = gets.chomp
    db.execute("UPDATE albums SET year_released=? WHERE id=?", [answer, album_id])
    puts ""
    puts "Release date updated!"
  when '5'
    puts ""
    puts "Sorry, but you can\'t change history!"
  when 'x'
    db.execute("DELETE FROM albums WHERE id=?", [album_id])
    puts ""
    puts "Album Removed! (╯°□°)╯︵ ♪♫"
    puts ""
  else
    puts Faker::ChuckNorris.fact
  end
end

# DRIVER CODE:
puts ""
puts ""
puts "MUSIC MANAGER v.1 :D!"
loop do
  puts "— "*21
  puts "What would you like to do?"
  puts ""
  puts "type '1' to VIEW your albums"
  puts "type '2' to ADD an album"
  puts "type '3' to EDIT an album"

  answer = gets.chomp
  case answer
  when '1'
    album_heading(first_hash)
    get_albums = get_current_albums(db)
    list_albums(get_albums)
  when '2'
    create_album(db)
  when '3'
    edit_album(db, first_hash, get_albums)
  else
    puts ""
    puts ""
    puts "Sorry, I didn't get that."
    puts Faker::ChuckNorris.fact
  end
end