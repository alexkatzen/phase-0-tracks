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

  # Prints how fast in months the virus will spread based on a given 
  # population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# PSEUDOCODE TO CREATE REPORT FOR 50 STATES:

# Iterate over STATE_DATA
STATE_DATA.each do |state, pop|
  VirusPredictor.new(state, pop[:population_density], pop[:population]).virus_effects

  # Create a new VirusPredictor object, use the STATE_DATA to populate its arguments (state_of_origin, population_density, population)
  # Run virus_effects

end

#=======================================================================
# Reflection Section
