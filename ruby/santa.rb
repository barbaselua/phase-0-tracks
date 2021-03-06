class Santa
	attr_reader :age
	attr_accessor :gender, :ethnicity, :reindeer_ranking
	def speak 
		puts "Ho, ho, ho! Haaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end 
	def initialize
		puts "Initializing Santa instance..."
		@gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"].sample
		@ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"].sample
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(1...140)
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
#santas = []
#santas << Santa.new("female", "black")
#santas << Santa.new("male", "asian")
#santas << Santa.new("agender", "Latino").get_mad_at('Rudolph')
#santas << Santa.new("N/A", "white")
#p santas
#santa = Santa.new("n/a", "n/a")
#p santa.gender = "no gender at all"
100.times do 
	p Santa.new
end 