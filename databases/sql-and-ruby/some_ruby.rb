# require gems
require 'sqlite3'
require 'faker'

# create database
db = SQLite3::Database.new("flights.db")
db.results_as_hash = TRUE

# built table with a heredoc delimiter
create_table = <<-SQL 
CREATE TABLE IF NOT EXISTS flights(
  id INTEGER PRIMARY KEY,
  company_name VARCHAR(255),
  destination VARCHAR(255),
  passenger_no INT, 
  departure_time TIME,
  clear_for_take_off BOOLEAN
  )
SQL

# create table
db.execute(create_table)
db.execute("INSERT INTO flights (company_name, destination, passenger_no, departure_time, clear_for_take_off) VALUES ('American Eagle', 'Paris', 545, '09:00:00', 'false')")

def create_flight(db, company_name, destination, passenger_no, departure_time, clear_for_take_off)
  db.execute("INSERT INTO flights (company_name, destination, passenger_no, departure_time, clear_for_take_off) VALUES (?, ?, ?, ?, ?)", [company_name, destination, passenger_no, departure_time, clear_for_take_off])
end

create_flight(db, Faker::Company.name, Faker::Address.city, Faker::Number.between(1, 853), Faker::Time, 'false')
flight1 = db.execute("SELECT * FROM flights")
p flight1

# def display_flight_info(db)
#   flight_info = db.execute("SELECT * FROM flights")
#   flight_info.each do |flight, details|
#     if flight['clear_for_take_off'] = true
#       puts 'Yes'
#     else
#       puts 'No'
#     end 
#     puts "Flight information:"
#     puts "Company: #{flight['company_name']}"
#     puts "Destination: #{flight['destination']}"
#     puts "Number of passengers: #{flight['passenger_no']}"
#     puts "Departure time: #{flight['departure_time']}"
#     puts "Ready for take off: #{clear_for_take_off}"
#   end 
# end
