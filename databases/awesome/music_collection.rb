# MUSIC COLLECTION

# require gems
require 'sqlite3'

# create the SQLite3 database
db = SQLite3::Database.new("music.db")

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
db.execute( "INSERT INTO albums(album_name, artist, genre, year_released, date_added) VALUES ('Still Waters Run Deep', 'FourTops', 'Soul', 1970, 1231231)" )

def add_album(db, album_name, artist, genre, year_released)
  date_added = Time.new.to_s[0..18]

  db.execute("INSERT INTO albums(album_name, artist, genre, year_released, date_added) VALUES (?, ?, ?, ?, ?)", [album_name, artist, genre, year_released, date_added])
end


# Create a method for viewing all the albums
# Create a method for adding an album
# Create a method for editing an album


while true

  album = { "album name" => nil, "artist" => nil, "genre"=> nil, "year released" => nil }

  puts "Add an album to the collection! (or type 'exit' to quit)"
  puts ""
  puts "What is the name of the album?"
  album["album name"] = gets.chomp

  puts "Which artist is this album by?"
  album["artist"] = gets.chomp

  puts "What genre is this album?"
  album["genre"] = gets.chomp

  puts "What year was this album released"
  album["year released"] = gets.chomp

  puts ""
  puts "Here's the album as entered so far:"
  puts ""

  album.keys.each_with_index do |info, index|
    puts "#{index} - #{info.upcase}... #{album[info]}"
  end
  # About each_with_index: https://apidock.com/ruby/Enumerable/each_with_index

  puts ""
  puts "To add the album as-is, type 'add', to make edits type 'edit', otherwise type 'x' to start over"
  answer = gets.chomp.downcase

  # add the album to the db
  add_album(db, album["album name"], album["artist"], album["genre"], album["year_released"])

end

# DRIVER CODE:
# Create a interface that offers a menu of things to do:
  # See the album collection
  # Add an album to the collection
  # Edit an album in the collection