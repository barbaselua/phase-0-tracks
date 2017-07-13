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
end
  
Bud = Puppy.new
puts Bud.fetch('ball')
puts Bud.speak(3)
puts Bud.roll_over