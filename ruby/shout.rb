=begin module Shout
	def self.yell_angrily(words)
		words + "!!!" + ":(" 
	end
	def self.yelling_happily
		 "Yaaaay Ruby!"
	end 
end 
p Shout.yelling_happily
p Shout.yell_angrily("My brain hurts")
=end 
module Shout 
	def yell_angrily(words)
		words + "!!!" + ":("
	end 
	def yelling_happily
	"Yaaay Ruby!" 
	end
end
class Students
	include Shout
end 
class Teachers
	include Shout
end 