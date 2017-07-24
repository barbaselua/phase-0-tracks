# Virus Predictor

# I worked on this challenge with Diane H.
# We spent 2.5(ish) hours on this challenge.

# EXPLANATION OF require_relative
# links the current working file with external file in order to pass
# data from the external file to the working one.
# require loads files that already exist inside ruby.
require_relative 'state_data'

class VirusPredictor
 # AFTER RECAPPING ON MY OWN, I WASN'T COMPLETELY SATISFIED WITH OUR INITIAL COMMENT SO I DECIDED TO REPHRASE.
 # I HOPE IT IS OK.
 # declaring a set of attributes/instance variables that will allow us to pass in data
 # and make it available anywhere inside the class. when creating and outputting an instance of a class,
 # our program will print out the attibute as well.
 # apply to that class instance.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 # predicting outcomes based on a formula that takes the density, population size and state as parameters.
 # predicting speed of spead
 # after refactoring and an office hour my partner and I attended together I feel like I should rephrase again
 # this method just calls on the predicted deaths and speed of spread methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # the keyword 'private' will keep all the methods defined from now accessible only inside the class.
  # the private methods will be available to be called from methods defined inside the class, but not outside of it.
  # if the keyword would be moved above the virus_effect method, all of our instance methods would be private 
  # so we would be able to create new instances of our class, but there would be no instance methods we could call
  # on those.
  # I would use 'private' if I were to create a program that would involve passwords. I would want the passwords to 
  # be private.
  def predicted_deaths
    # predicted deaths is solely based on population density

    # based on a formula that uses the instance variables @population_density and @population, 
    # this method calculates how many deaths are predicted in a state. 
    # the output of this method will be a string containing the prediction in a state.
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    # based on a formula that uses the instance variable @population_density, this method calculates
    # the speed the virus spreads. 
    # the output will be a string containing the information the formula returns.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

# STATE_DATA.each do |state_name, pop_info| 
#   puts state_name 
#   puts pop_info[:population_density]
# end 


STATE_DATA.each do |state_name, pop_info|
  VirusPredictor.new(state_name, pop_info[:population_density], pop_info[:population]).virus_effects
end 
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  # the keys representing the names of the states need to be user 
  # friendly too so they have to be pretty. that's why we choose to have string keys that can be capitalized
  # and don't require the use of an underscore when a name is a 2 words name. having strings as keys
  # require the use of the hash rocket (=>). 
  # the keys representing the population data needs to just be programmer readable so we choose a symbol
  # that is more practical.
# What does require_relative do? How is it different from require?
  # see comments on lines 6 to 9.
# What are some ways to iterate through a hash?
  # the most popular are .each and map.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # -
# What concept did you most solidify in this challenge?
  # without a doubt instance variables and instance methods.