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
  db.execute("INSERT INTO flights(company_name, destination, passenger_no, departure_time, clear_for_take_off") 
  VALUES (?, ?, ?, ?, ?), [company_name, destination, passenger_no, departure_time, clear_for_take_off]
end

