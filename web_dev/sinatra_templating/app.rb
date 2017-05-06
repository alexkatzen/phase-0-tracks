# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# SQL command to create a table for campuses
create_campuses = <<-SQL
  CREATE TABLE IF NOT EXISTS campuses(
    id INTEGER PRIMARY KEY,
    campus_name VARCHAR (255)
  )
SQL

# Create the table
db.execute(create_campuses)

# show campuses
get '/campuses' do
  @campuses = db.execute("SELECT * FROM campuses")
  erb :campuses
end

# add a campus
post '/campuses' do
  db.execute("INSERT INTO campuses (campus_name) VALUES (?)", [params['campus_name']])
  redirect '/campuses'
  erb :campuses
end

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

# show sf students on the sf_campus page.
get '/sf_campus' do
  @students = db.execute("SELECT * FROM students WHERE campus='SF'")
  erb :sf_campus
end

get '/students/new' do
  erb :new_student
end

# create new students via a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources