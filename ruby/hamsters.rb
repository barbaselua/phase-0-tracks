puts "Hamster's name?"
# this section asks the user for hamster's name.
name = gets.chomp
if name == ''
	puts "Fluffy"
end
puts "Volume level?"
# this section asks the user for the noise level of the hamster.
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
# this section asks the user for the fur color of the hamster.
fur_color = gets.chomp
puts "Good candidate for adoption?"
# this section asks the user if the hamster is a good candidate for adoption.
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
# this section asks the user the hamster's age.
age = gets.chomp
if age == ''
	age = nil
end