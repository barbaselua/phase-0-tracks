class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(x)
    puts "Woof! "*x
  end 
  def roll_over
  	puts "*rolls over*"
  end 
  def dog_years(y)
  	puts y*7
  end
  def jump
  	puts "Whenever I jump, it means I am happy to see you"
  end
  def initialize
  	puts "Initializing new puppy instance ..."
  end
end
  
Bud = Puppy.new
puts Bud.fetch('ball')
puts Bud.speak(3)
puts Bud.roll_over
puts Bud.dog_years(3)
puts Bud.jump