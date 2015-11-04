#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
	attr_reader :name
	def initialize
		@name = "Alan"
	end
end


class Greetings
	def initialize
		@student = NameData.new
	end
	def use_data
		puts "Nice to meet you #{@student.name}!"
	end
end



# Reflection
=begin
	
Release 1:
What are these methods doing?

- First, the Profile class was created.
- The first method initializes the age, name, and occupation of a person's profile. Each instance variable is given a value (27, Kim, and Cartographer). An @ sign is placed in front of the variables to make them instance variables, so they can be used outside of the initialize method.
- The second method prints out the info using puts to print them out as a string. Empty puts are placed between each line of code to provide a space between the info. It is calling the variables using #{@instance_variable_name}.
- The third and fourth methods allow the profile to be updated when calling a new instance. It is setting the instance variable, age, to the new age it will be updated with.
- The fifth and sixth method do the same thing but for name.
- The seventh and eigth method do the same thing but for the occupation.

How are they modifying or returning the value of instance variables?

- They first set an instance of the profile equal to the class Profile using Profile.new. They use the p modifier to print to the console whatever value is returned. They use the .change_my_x methods following the profile instance to update the information listed in the first method within the class.	

Release 2:

What changed between the last release and this release?

- There is no more method for what_is_age.

What was replaced?

- it was replaced with attr_reader :age, so that translates to

def age
  @age
end

Is this code simpler than the last?

I think it makes it a lot simpler rather than writing out the code each time. I am assuming that you can do this with the methods: what_is_name and what_is_occupation as well.

Release 3:

What changed between the last release and this release?

- There is no more change_my_age method.

What was replaced?

- It was replaced with attr_writer :age, with translates to

def change_my_age=(new_age)
	@age = new_age
end

Is this code simpler than the last?

Yes, again it shortens the code wrather than having to write new methods.

Release 4:

Refactored code in release_4.rb and release_5.rb

Release 6:

What is a reader method?

attr_reader is a reader which means that it just returns a value or state outside of the class, but does not change it.

What is a writer method?

attr_writer is a writer which means that you can change the value of the variable outside of the class, but it is not readable.

What do the attr methods do for you?

It allows you to eliminate obvious method that allows you to read/write an instance variable outside of the class itself.

Should you always use an accessor to cover your bases? Why or why not?

No because it makes may cause bugs down the line because it provides accessibility to the user to change variables that you may not want changed.

What is confusing to you about these methods?

I think the challenge clearned up the questions I had from the readings about these methods, so nothing is too confusing at this point.

=end