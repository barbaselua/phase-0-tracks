# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  # @campuses = db.execute("SELECT * FROM campuses")
  erb :home
end

get '/second' do 
  @students = db.execute("SELECT * FROM students")
  erb :second_home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# we tried to build a form and add a campuses table in order for the user to be able to add adintional cities. 
# doesn't work /:(
# get 'campuses/new' do 
#   erb :campuses
# end 

# post '/campuses' do 
#   db.execute("INSERT INTO campuses (cities, capacity) VALUES (?, ?)", [params['cities'], params['capacity'].to_i])
# end

# add static resources