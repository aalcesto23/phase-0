# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# It allows you to apply data from another file to the file that has require_relative. To use require_relative you will need to place it into the file you are going to implement the data. You then place the file name within ''. The file must be within the same directory. Require does not know what the working directory is so it must be specified, while require_relative knows to look in the working directory.
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    elsif @population_density < 50
      number_of_deaths = (@population * 0.05).floor
    else
      number_of_deaths = (@population * 0.1).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

   def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    elsif @population_density > 50
      speed += 2
    else
      speed += 2.5 - ((@population_density/50)*0.5).floor
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

# VirusPredictor.virus_data

all_states = STATE_DATA.keys
all_states.each {|state| state.virus_effects if state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population]) }

#=======================================================================
# Reflection Section

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

The difference is between the key/value syntax and the symbols syntax. Within the STATE_DATA has was keys and values, the key being the state and the value being another hash that used symbols. The symbols are assigned values. This way the states can have one value but within it there were multiple values.

What does require_relative do? How is it different from require?

It allows you to apply data from another file to the file that has require_relative. To use require_relative you will need to place it into the file you are going to implement the data. You then place the file name within ''. The file must be within the same directory. Require does not know what the working directory is so it must be specified, while require_relative knows to look in the working directory.

What are some ways to iterate through a hash?

For this challenge we used each to iterate through the STATE_DATA hash, applying the virus effects. Then we just followed the format of the previous driver code

When refactoring virus_effects, what stood out to you about the variables, if anything?

Knowing the scope of the variables allowed you to remove them, for example accepting them as arguments within a method.

What concept did you most solidify in this challenge?

I think knowing the scope your variables was the most important thing to take away from this challenge. At first my partner and I believed that we needed to iterate within the class, but we weren't taking into account the scope of STATE_DATA. We were stuck on it for a while because we were trying to think of a way to apply the private methods to our new method and return all of it in our driver code.
  
=end