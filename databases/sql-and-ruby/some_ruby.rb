require 'sqlite3'

db = SQLite3::Database.new("flights.db")

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