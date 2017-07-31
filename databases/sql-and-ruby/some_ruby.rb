require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("flights.db")
db.results_as_hash = TRUE

create_table = <<-SQL 
CREATE TABLE IF NOT EXISTS flights(
  id INTEGER PRIMARY KEY,
  company_name VARCHAR(255),
  destination VARCHAR(255),
  passenger_no UNSIGNED, 
  departure_time TIME,
  clear_for_take_off BOOLEAN
  )
SQL
db.execute(create_table)

def create_flight(db, company_name, destination, passenger_no, departure_time, clear_for_take_off)
  db.execute("INSERT INTO flights(company_name, destination, passenger_no, departure_time, clear_for_take_off) 
  VALUES (?, ?, ?, ?, ?)", [company_name, destination, passenger_no, departure_time, clear_for_take_off])
end
def display_fligth_info(db)
  flight_info = db.execute("SELECT * FROM flights")
  flight_info.each do |flight, details|
    if flight['clear_for_take_off'] = true
      puts 'Yes'
    else
      puts 'No'
    end 
    puts "Flight information:"
    puts "Company: #{flight['company_name']}\n
    Destination: #{flight['destination']}\n
    Number of passengers: #{flight['passenger_no']}\n
    Departure time: #{flight['departure_time']}\n
    Ready for take off: #{clear_for_take_off}"
  end 
end
