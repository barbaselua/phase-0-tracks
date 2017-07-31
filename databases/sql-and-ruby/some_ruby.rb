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
# db.execute("INSERT INTO flights (company_name, destination, passenger_no, departure_time, clear_for_take_off) VALUES ('American Eagle', 'Paris', 545, '09:00:00', 'false')")

def create_flight(db, company_name, destination, passenger_no, departure_time, clear_for_take_off)
  db.execute("INSERT INTO flights (company_name, destination, passenger_no, departure_time, clear_for_take_off) VALUES (?, ?, ?, ?, ?)", [company_name, destination, passenger_no, departure_time, clear_for_take_off])
end

# 853 is the total number of passengers the biggest aircraft can cary at the moment.
# I experimented with this method for a while so I ended up generating a few entries for my flights table. 
# create_flight(db, Faker::Company.name, Faker::Address.city, Faker::Number.between(1, 853), '14:00:00', ['true', 'false'].sample)

def display_flight_info(db)
  flight_info = db.execute("SELECT * FROM flights")
  flight_info.each do |flight, details|
    puts "Flight information:"
    puts "Company: #{flight['company_name']}"
    puts "Destination: #{flight['destination']}"
    puts "Number of passengers: #{flight['passenger_no']}"
    puts "Departure time: #{flight['departure_time']}"
    if flight['clear_for_take_off'] == 'true'
     puts "Ready for take off: Yes"
    else
     puts "Ready for take off: No"
     end 
  end 
end
display_flight_info(db)
# I intend to get back and finish/improve my project.