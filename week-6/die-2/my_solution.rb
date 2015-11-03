# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an array of labels
# Output: a randomized side that is assigned a label
# Steps:
# - define the class
# - initialize the input of labels
# - IF the list of labels is empyt, raise an argument
# - ELSE set the instance variable equal to the input
# - the sides will be equal to the number of labels provided
# - when rolled it will provide a random side that is assigned a lable

# Initial Solution
=begin
class Die
  def initialize(labels)
  	if labels == []
  		raise ArgumentError.new("Create your die with a list of labels")
  	else
  		@labels = labels
  	end
  end

  def sides
  	@labels.size
  end

  def roll
  	@labels.sample
  end
end
=end
# Refactored Solution

class Die
	def initialize(labels)
		if labels == []
			raise ArgumentError.new("Create your die with a list of labels")
		else
			@labels = labels
			@sides = @labels.size
		end
	end
	attr_accessor :sides
  	def roll
    	@labels.sample
  	end
end

# Reflection
=begin
- What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

This time, instead of receiving just a number of sides, we received an array of strings. Because we are dealing with an array we need to use methods specific to arrays to manipulate our code.

- What does this exercise teach you about making code that is easily changeable or modifiable?

I think that this exercise shows that if you have solid code, you can manipulate it to fit the needs of similar tasks, in this case accepting an array of strings rather than an integer.

- What new methods did you learn when working on this challenge, if any?

I learned sample to call on a random element within an array.

- What concepts about classes were you able to solidify in this challenge?

I think that it solidified my knowledge on how to create classes overall. It didn't deviate too far from the other die challenge, so the thought process behind the code for this challenge was almost the same as the last.

=end