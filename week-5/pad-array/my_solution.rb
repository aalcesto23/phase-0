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