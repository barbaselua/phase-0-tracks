=begin 
create an empty hash, prompt the designes/user for client's info and store the info in the hash. print the hash. ask the designer if any update is needed. if no update needed, no action required; if update needed, allow the designer to update any key. store the update in the hash. print the updated hash and exit the program.
=end 
client_info = {}
puts "Client name:"
client_info [:name] = gets.chomp 
puts "Client age:"
client_info[:age] = gets.chomp 
puts "Children:"
client_info[:children] = gets.chomp 
puts "Design style:"
client_info[:design_style] = gets.chomp
puts "Open to different styles:"
client_info[:flexibility] = gets.chomp 
if client_info[:flexibility] == 'yes'
  client_info[:flexibility] = true 
else client_info[:flexibility] == 'no'
  client_info[:flexibility] = false
end
p client_info
puts "Anything to update?"
update = gets.chomp.to_sym 
if update == 'none'.to_sym 
  nil 
else
  puts "Please update #{update} now:"
  client_info[update] = gets.chomp
end 
p client_info