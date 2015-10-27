# Pad an Array

# I worked on this challenge [by myself, with: Michael Whelpley ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# The input would be three arguments: an array, the minimum size, and an optional value.
# What is the output? (i.e. What should the code return?)
# The output would be the array filled in with the optional value if the minimum size is more than the array length.
# What are the steps needed to solve the problem?
# pad!:
# - the method accepts 3 arguments (array, minimum size, optional value)
# - IF the minimum size is less than or equal to the length of the array it will return the original array
# - ELSE if the minimum size is larger than the array length, it will increase the array by the difference in the minimum size and the array length
# - with the empty spots in the array added from the minimum size, the empty spots will be replaced with the optional value
# - it will return the array with the added spots and optional value if needed, changes are permanent
# pad:
# - the method accepts 3 arguments (array, minimum size, optional value)
# - IF the minimum size is less than or equal to the length of the array it will return the original array
# - ELSE if the minimum size is larger than the array length, it will increase the array by the difference in the minimum size and the array length
# - with the empty spots in the array added from the minimum size, the empty spots will be replaced with the optional value
# - it will return the array with the added spots and optional value if needed, changes are not permanent

# 1. Initial Solution
=begin
def pad!(array, min_size, value = nil) 
  if min_size <= array.length
  	return array
  else
  	difference = min_size - array.length
  	while difference > 0
  		array << value
  		difference -= 1
  	end
  	return array
  end
end


def pad(array, min_size, value = nil)
  new_array = []
  array.each do |item|
  new_array << item
	end
  if min_size <= array.length
  	return new_array
  else
  	difference = min_size - array.length
  	while difference > 0
  		new_array << value
  		difference -= 1
  	end
  	return new_array
  end
end
=end

# 3. Refactored Solution

def pad!(array, min_size, value = nil)
  if min_size <= array.length
    return array
  else
    difference = min_size - array.length
    array.fill(value, array.length, difference)
  end
end

def pad(array, min_size, value = nil)
  new_array = []
  array.each do |item|
  new_array << item
  end
  if min_size <= array.length
    return new_array
  else
    difference = min_size - array.length
    new_array.fill(value, array.length, difference)
    return new_array
  end
end


# 4. Reflection
=begin
	
Were you successful in breaking the problem down into small steps?

I think we were pretty successful, we thought about method should be doing in steps and listed that in our pseudo code.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

We were able to translate our pseudo code successfully for the most part. Since our pseudo code was almost exactly alike between the destructive and non destructive, it was harder coding for the non destructive since our pseudo code was more geared towards the destructive.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our code for the destructive passed the initial test because it was easier to permanantly change the code, unlike the non destructive which needed us to think of away of working around the original array without changing it through our method. Initially we thought we could simply set new_array = array, which obviously didn't work.

When you refactored, did you find any existing methods in Ruby to clean up your code?

We ended up using the .fill method in our refactored code which allowed us to get rid of our while-loop.

How readable is your solution? Did you and your pair choose descriptive variable names?

Our solution seems pretty solid and our variable descriptions make it easier to understand how the method works, especially when you read it back to yourself outloud.

What is the difference between destructive and non-destructive methods in your own words?

A destructive method will permanently change whatever is receiving the method, while a non destructive method will alter the whatever is receiving the method for that instance, so not permanently
	
=end