class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(x)
    puts "Woof! "*x
    x
  end 
  def roll_over
    puts "*rolls over*"
  end 
  def dog_years(y)
    puts y*7
    y
  end
  def jump
    puts "Whenever I jump, it means I am happy to see you."
  end
  def initialize
    puts "Initializing new puppy instance ..."
  end
end
  
bud = Puppy.new
bud.fetch('ball')
bud.speak(3)
bud.roll_over
bud.dog_years(3)
bud.jump
puts "Cats class ----------------------------"
class Cats
  def speak
    puts "Meow!"
  end
  def fetch(toy)
    puts "Cats don't bring back the #{toy}." 
    toy	
  end
  def initialize
    puts "I am cat. I don't like people."
  end 
end
#driver code 
kitty = Cats.new
kitty.speak
kitty.fetch("cotton mouse")
shelter = []
50.times do 
  shelter.push(garfield = Cats.new)
end 
shelter.each do |cat|
  cat.speak
  cat.fetch("cotton ball")
end 



