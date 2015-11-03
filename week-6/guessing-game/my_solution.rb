# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:
# - an answer must be defined before a guess can be made
# - a method must be defined for a guess
# - IF the guess is less than the answer, responds with "low"
# - ELSIF the guess is greater than answer, responds with "high"
# - ELSE would mean that the guess is equal to the answer, responds with "correct"
# - define a method for the correct guess
# - IF the response is equal to correct it will be true
# - ELSE it will be false

# Initial Solution

=begin
class GuessingGame
	def initialize(answer)
  		@answer = answer
  	end

  	def guess(guess)
  		if guess < @answer
  			@response = :low
  		elsif guess > @answer
  			@response = :high
  		else
  			@response = :correct
  		end
  	end

  	def solved?
  		if @response == :correct
  			true
  		else
  			false
  		end
	end
end

=end



# Refactored Solution


class GuessingGame
	def initialize(answer)
  		@answer = answer
  	end

  	def guess(guess)
  		@guess = guess
  		@guess = (@guess > @answer) ? :high : (@guess < @answer ? :low : :correct)
  	end
  	
  	def solved?
  		if @guess == :correct
  			true
  		else
  			false
  		end
	end
end

# Reflection
=begin

- How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables can be used to describe and object. Say the object was a ball and the instance variable is red, you can apply this instance variable to other objects that aren't balls.

- When should you use instance variables? What do they do for you?
You should use an instance variable if you are going to need to use the variable outside of the original method. An example of this is when you need to call a varibale within a class to other methods.

- Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
I used an if/elsif/else statement as flow control of my methods. Up until this point I primarily use this style of flow control so it wasn't difficult. I struggled with ways of refactoring an if/elsif/else statement. Initially I thought a when/then would work, but I kept receiving a syntax error due to the instance variables, so I decided to use a ternary operator, which I found online.

- Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Since symbols are unique and cannot be altered in any way, it was perfect for this challenge because the responses will always be the same. It is benefitial to use symbols because they are only stored once, so it saves memory. You can reference symbols multiple times within your code and know it will always be soted as the same thing.
=end
