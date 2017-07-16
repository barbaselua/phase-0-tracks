class Santa
	def speak 
		puts "Ho, ho, ho! Haaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end 
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 
	def age 
		@age 
	end
	def ethnicity
		@ethnicity
	end 
	def celebrate_birthday
		@age += 1
	end 
	def get_mad_at(reindeer_name)
		if @reindeer_ranking.include?(reindeer_name)
			@reindeer_ranking.delete_if { |name| name == reindeer_name}
			@reindeer_ranking.push(reindeer_name)
		end 
	end 
end 
# driver code 
santas = []
santas << Santa.new("female", "black")
santas << Santa.new("male", "asian")
santas << Santa.new("agender", "Latino").get_mad_at('Rudolph')
santas << Santa.new("N/A", "white").celebrate_birthday
p santas
	
