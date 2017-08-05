# require gems
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that displays an address

get '/contact' do 
  "123 Main Street, City, State, 12345"
end 

# write a GET route with a query parameter

get '/good_job/' do
  name = params[:name]
  if name 
    "Good job, #{name}!"
  else
    "Good job!"
  end
end 

#write a GET route that uses route parameters to add 2 numbers and return the result

get '/adder/:number1/:number2' do 
  number1 = params[:number1].to_i
  number2 = params[:number2].to_i
  adder = number1 + number2
  "The sum of #{number1} and #{number2} is #{adder}."
end
# BONUS 
get '/certain_name/:name' do
specific_name = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])
specific_name.to_s
end