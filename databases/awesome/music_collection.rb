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

# execute SQLite query
db.execute(create_albums_table)

# add a test album
db.execute( "INSERT INTO albums(album_name, artist, genre, year_released, date_added) VALUES ('Still Waters Run Deep', 'FourTops', 'Soul', 1970, 1231231)" )