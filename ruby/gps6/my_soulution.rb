# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#

# require vs require_relative:

# require_relative is used when you want to target any directly associated files with the project.
# require is used when loading files within the ruby root directory e.g. loading pre-installed gems, built-in libraries, parts of ruby that aren't automatically loaded.
require_relative 'state_data'

# Class definition for Virus protector.
class VirusPredictor

  # Initializes the object with its state, population density and population.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls private methods to give final summary of virus effects.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Prints a summary of the number of deaths that will occur based on a 
  # given population density and population, with the given state.  
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    def number_of_deaths(factor)
      (@population * factor).floor
    end

    if @population_density >= 200
      d = number_of_deaths(0.4)
    elsif @population_density >= 150
      d = number_of_deaths(0.3)
    elsif @population_density >= 100
      d = number_of_deaths(0.2)
    elsif @population_density >= 50
      d = number_of_deaths(0.1)
    else
      d = number_of_deaths(0.4)
    end

    print "#{@state} will lose #{d} people in this outbreak"

  end

  # Prints how fast in months the virus will spread based on a given 
  # population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1.0
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2.0
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


# PSEUDOCODE TO CREATE REPORT FOR 50 STATES:
# Create a new VirusPredictor object, use the STATE_DATA to populate its arguments (state_of_origin, population_density, population)
  # Run virus_effects
  # Iterate over STATE_DATA

STATE_DATA.each do |state, pop|
  VirusPredictor.new(state, pop[:population_density], pop[:population]).virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # -- The first, outer hash uses strings for keys and nested hashes for values. Its syntax matches keys to values by using hash rockets.
  # -- The second, inner hash syntax matches keys to values using symbols directly followed by integers and floats for values.

# What does require_relative do? How is it different from require?
  # -- require_relative loads external files relative to the location that the file calling it resides.
  # -- require is used to load ruby extensions and libraries.

# What are some ways to iterate through a hash?
  # -- Iterating over each item in the hash for each key e.g. <hash>.each do |key| end
  # -- Iterating over each key and its corresponding value e.g. <hash>.each do |key, value| end
  # -- Iterating over each value using each_value e.g. <hash>.each_value { |value| puts value }

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # -- That it was unnecessarily passing in the class's instance variables (they were already being called within the methods that virus_effects was calling).

# What concept did you most solidify in this challenge?
  # -- Use of instance variables.