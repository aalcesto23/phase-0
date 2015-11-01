# Numbers to Commas Solo Challenge

# I spent [~3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? the input would be a number
# What is the output? (i.e. What should the code return?) it should return a number with commas inserted every third decimal place from the end of the end
# What are the steps needed to solve the problem?
# - accepts one argument, a number
# - break the number up into single digets
# - IF the number is smaller than 4 digets, return the number
# - ELSIF the number is larger than 4 digets, count from the end every 4 and add a comma every 4 places (between the 3rd and 4th number)
# - put the digets together with array


# 1. Initial Solution

=begin
def separate_comma(number)
  number_array = number.to_s.split('')
  over_thousandth = number_array.length/3
  if number_array.length < 4
    p number.to_s
  elsif number_array.length%3 == 0
    counter = -4
    (over_thousandth.to_i-1).times do |i|
      number_array.insert(counter, ',')
      counter -= 4
    end
    p number_array.join("")
  else
      counter = -4
    over_thousandth.to_i.times do |i|
      number_array.insert(counter, ',')
      counter -= 4
    end
    p number_array.join('')
  end
end
=end

# 2. Refactored Solution

def separate_comma(number)
  number_string =  number.to_s
  number_array = []
  number_string.split(//).reverse.each_slice(3) { |slice| number_array << slice }
  number_array.reverse.collect{|i| i.reverse.join}.join(",")
end


# 3. Reflection
=begin

What was your process for breaking the problem down? What different approaches did you consider?

I thought breaking down the number into a string within an array. Originally, I thought it would be easier to break the number into an array and then sub-arrays within the original array, but that seemed redundant.

Was your pseudocode effective in helping you build a successful initial solution?

I think it helped a bit, but at times I got confused by my pseudo code because it wasn't as specific.

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I ended up going back to my original thought of splitting the numbers into sub-arrays by using .slice from the end of the number, so then i could just append the comma.

How did you initially iterate through the data structure?

Initially I used .each with the counter of -4.

Do you feel your refactored solution is more readable than your initial solution? Why?

I think it is easier to read the refactored solution if you are familiar with how the all the methods used because it is more compacted, but I feel like if you don't know a lot of methods, it is easier to read the initial solution out loud and already get an idea of what is going on in the code.

=end