# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: Josh Shin ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# User inputs variables of array
# Take variables and add variables

# Input: 5
# Output: 120
# Steps to solve the problem.


# 1. total initial solution
=begin
def total(array)
	if array.size != 0
		total_num = 0
		for n in 0...array.size
			value = array[n]
			total += value
		end
		return total_num
	end
end
=end

# 3. total refactored solution

def total(array)
	if array.size != 0
		total_num = 0
		for n in 0...array.size
			value = array[n]
			total_num += value
		end
		return total_num
	end
end

# 4. sentence_maker pseudocode

=begin
User enters in array variables
condence variables into string
space out string
capitalize first letter or first variable in string
add period to the end
=end
# 
# Input: "have", "a", "nice", "day"
# Output: "Have a nice day."
# Steps to solve the problem.


# 5. sentence_maker initial solution

=begin

def sentence_maker(words)
	if words.size != 0
		sentence = ""
		for w in 0...words.size
			word = words[w]
			if (word.is_a? String)
				sentence += word + " "
			else
				sentence += word.to_s + " "
			end
		end
		sentence.chomp!(" ")
		sentence += "."
		sentence.downcase!
		sentence.capitalize!
		puts sentence
		return sentence
	end
end
=end
# 6. sentence_maker refactored solution

def sentence_maker(words)
	if words.size != 0
		sentence = ""
		for w in 0...words.size
			word = words[w]
			if (word.is_a? String)
				sentence += word + " "
			else
				sentence += word.to_s + " "
			end
		end
		sentence.chomp!(" ")
		sentence += "."
		sentence.downcase!
		sentence.capitalize!
		return sentence
	end
end