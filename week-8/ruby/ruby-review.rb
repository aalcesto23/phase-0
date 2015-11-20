# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# - create a method to reverse a sentence
# - accepts one argument, a string
# - split that string into an array
# - iterate through the array and reverse each word within the array
# - join the array
# - pring the reversed words

# Initial Solution

# def reverse_words(string)
#   string_array = string.split
#   string_array.each do |word|
#     word = word.reverse! + (" ")
#   end
#   reversed = string_array.join(" ")
#   p reversed
# end

# p reverse_words("I like cats")

# Refactored Solution

def reverse_words(string)
	array = string.split
	array.map {|word| word.reverse!}
	array.join(" ")
end

# p reverse_words("I like cats")

# Reflection
=begin


What concepts did you review or learn in this challenge?

- I needed to remind myself of the general syntax of Ruby. I reviewed iterating through an array and applying built in Ruby methods. I used .each to iterate through the array in my initial response, and then later used map in my refactored code. Some built in Ruby methods I used was split (to turn it into an array), reverse (to reverse the strings within the array), and join (to join together the array into a string).

What is still confusing to you about Ruby?

- I am still a little confused about determining the scope of an object, and whether I should make certain methods within or outside of a class.

What are you going to study to get more prepared for Phase 1?

- Think I still need to work on classes and scope. I might go over the GPS covering that material and see if I am able to do it on my own. I also need to practice accessing nested objects in both Ruby and JavaScropt.

=end