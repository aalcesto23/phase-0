# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Shea Munion ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array with values
# What is the output? (i.e. What should the code return?) the most reoccuring value(s) in the array
# What are the steps needed to solve the problem?
# - accepts one argument, an array
# - counts how the frequency of each item that occurs in an array
# - compare frequencies of each item
# - if an item's frequency if greater than the other item's frequencies, it will return the item as the mode
# - if multiple items have the greatest, return all relevant items



# 1. Initial Solution

=begin
def mode(array)
  instance = Hash.new(0)
  array.each do |item|
    instance[item] += 1
  end
  values = []
  highest_frequency = 0
  p instance
  instance.each do |k, v|
    values << v
  end
  p values
  frequency = nil
  values.each do |cats|
    if frequency == nil || cats > frequency
      frequency = cats
    end
  end
  p frequency
  most_frequent = []
  instance.each do |key, value|
    if instance[key] == frequency
      most_frequent << key
    end
  end
  return most_frequent
end
=end
# 3. Refactored Solution

def mode(array)
  instance = Hash.new(0)
  array.each do |item|
    instance[item] += 1
  end
  most_frequent = instance.values.max
  p instance.collect { |k, v| k if v == most_frequent }.compact
end


# 4. Reflection
=begin
	
Which data structure did you and your pair decide to implement and why?

We used both hashes and arrays within our code. We used the hashes to gather objects as keys and the frequency of the objects as values. Than we gathered that information into an array to be compared, and then another array with the modes. We needed to use both hashes and arrays to seperate our code.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

I don't think that translating the pseudo code was as simple as the previous pairing challenge. I think that it was more difficult because we had to take in more factors into account (multiple modes, no modes, one mode).

What issues/successes did you run into when translating your pseudocode to code?

I think that our pseudo code was over simplified. I think that it would have been easier to translate it if the pseudo code was broken down into even smaller steps, rather than lumping them all together. When we lumped it together we tried thinking of ways to lump our code together the same way, which didn't work out.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

In our initial code we used a lot of .each do to iterate through our content. One that we found at the end of our coding was .compact. Before we used this we kept p out the array with the mode(s) and then nil for the objects that were not true to be the mode, so .compact helped solve that problem by getting rid of the nil and only p the mode(s). Overall I think the whole point of the built in methods is for them to be easy to implement, it is just a matter of finding the actual method.
	
=end