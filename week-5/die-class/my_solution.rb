# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution
=begin

class Die
	def initialize(sides)
		@sides = sides
		if sides < 1
			raise ArgumentError.new("A die consists of positive integers.")
		else
			@sides = sides
		end
	end
	def sides
		@sides
	end
	def roll
    p rand(@sides) + 1
  end
end
=end


# 3. Refactored Solution

class Die
	def initialize(sides)
		if sides < 1
			raise ArgumentError.new("A die consists of positive integers.")
		else
			@sides = sides
		end
	end

	attr_accessor :sides

	def roll
    	p rand(@sides) + 1
  	end
end

# Reflection:
=begin
	
What is an ArgumentError and why would you use one?

ArgumentError is for raising your own error in a method to notify the user of your class and state if certain arguments aren't acceptable. It is used to give a specific error rather than the generic error.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

A lot of the formatting for the class and method was already written out for us, and it was just a matter of filling it in with code. Since the roll outcome needed to be random, I used rand() for the first time to make this happen.

What is a Ruby class?

A Ruby class is the blueprint from which individual objects are created.

Why would you use a Ruby class?

With classes you can bind a method to an object or type of object, and then call up the method as you see fit.

What is the difference between a local variable and an instance variable?

Local variables are defined within the method and cannot be called outside of the method, while instance variables are available across methods for any instance or object. Because of this instance variables will change from one object to another.

Where can an instance variable be used?

Instance variables can be used within a class.
	
=end