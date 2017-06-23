puts "Hamster's name?"
name = gets.chomp
if name == ''
	puts "Fluffy"
end
puts "Volume level?"
user_input = false
until user_input == true
volume = gets.chomp.to_i
	if volume >= 10
		puts "Choose from 1 to 10."
		user_input = false
	else 
		user_input = true
	end
end 