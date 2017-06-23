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
puts "Fur color"
fur_color = gets.chomp
puts "Good candidate for adoption?"
input = false
adoption = gets.chomp
if adoption == "yes" || adoption == "y"
	input = true
else
	adoption == "no" || adoption == "n"
	input = false
end
adoption = input
puts "Estimated age?"
age = gets.chomp
if age == ''
	age = nil
end