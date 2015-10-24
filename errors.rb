# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# line 8
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# There is an unexpected '=' while it was expecting an the end of the input
# 5. Where is the error in the code?
# The error is the equals sign between "Screw you guys " + "I'm going home." and cartmans_phrase
# 6. Why did the interpreter give you this error?
# The variable must first be identified, then the operations can follow after the equal sign.
#

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# line 36
# 2. What is the type of error message?
# a main object error
# 3. What additional information does the interpreter provide about this type of error?
# an undefined local variable or method
# 4. Where is the error in the code?
# following 'south_park'
# 5. Why did the interpreter give you this error?
# the local variable is not initialized

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# line 51
# 2. What is the type of error message?
# main object error
# 3. What additional information does the interpreter provide about this type of error?
# 'cartman' is a undefined method
# 4. Where is the error in the code?
# before 'cartman' on the same line and below 'cartman' on a second line
# 5. Why did the interpreter give you this error?
# the method 'cartman' hasn't been defined, so a 'def' and 'end' need to be added

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# line 66 and/or line 70
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# line 71
# 5. Why did the interpreter give you this error?
# 'I hate Kyle' is not a defined argument so it will not pass through the method

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# line 85 and/or 89
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 to 1)
# 4. Where is the error in the code?
# line 89 following cartman_says
# 5. Why did the interpreter give you this error?
# an argument is defined in the method, so a string must be entered use it



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# line 106 and/or 110
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# 110, within cartman()
# 5. Why did the interpreter give you this error?
# the method defines two arguments, but only one was inputed
=end
# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# multiplication
# 3. What additional information does the interpreter provide about this type of error?
# the string cannot be coerced into fixnum
# 4. Where is the error in the code?
# 125 following "*""
# 5. Why did the interpreter give you this error?
# a fixed number cannot be multiplied by a string

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# division error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# 140, after "20/"
# 5. Why did the interpreter give you this error?
# you cannot divide a number by 0

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 156
# 2. What is the type of error message?
# loading file error
# 3. What additional information does the interpreter provide about this type of error?
# cannot load such file
# 4. Where is the error in the code?
# it can be require_relative or the "carmans_essay.md" pathway
# 5. Why did the interpreter give you this error?
# they file pathway may be wrong or the file name does not exist
#
=begin
	
Reflection:

Which error was the most difficult to read?

I think the last one was the most difficult to read, so the load error. I understand the error, but what specifically is wrong with the file is hard to determine just by the error.

How did you figure out what the issue with the error was?

Well I didn't have the file on my computer so it was self-explanitory, but in a real situation when you receive that error it can be multiple things.

Were you able to determine why each error message happened based on the code?

I think that the example errors in the code were not too difficult to spot, some of which I have made, so I was able to determine why each error happened.

When you encounter errors in your future code, what process will you follow to help you debug?

Currently I just enter in my code, run the file, then mess around with the code until it works. Learning to read the errors is really helpful, so I will pay more attention to that moving forward. I suppose as my knowledge base grows I won't have to look into some of the more basic errors, but with that my code will become more complexed. When I reach that point I think i will need to work backwards from my point of error and see where I went wrong.

end