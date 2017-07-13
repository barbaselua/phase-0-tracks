class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(x)
    puts "Woof! "*x
  end 
end
  
Bud = Puppy.new
puts Bud.fetch('ball')
puts Bud.speak(3)