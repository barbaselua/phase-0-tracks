class Santa
	def speak 
		puts "Ho, ho, ho! Haaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end 
	def initialize
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 
end 
santas = []
santas << Santa.new("female", "black")
santas << Santa.new("male", "asian")
santas << Santa.new("agender", "Latino")
santas << Santa.new("N/A", "white")