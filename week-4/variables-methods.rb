puts 'What is your first name?'
first_name = gets.chomp.capitalize

puts 'I like the name ' + first_name + '. What is your middle name?'
middle_name = gets.chomp.capitalize

puts 'So your middle name is ' + middle_name + '. What about your last name?'
last_name = gets.chomp.capitalize

puts 'Nice to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

puts 'What is your favorite number?'
favorite_num = gets.chomp
favorite_num = favorite_num.to_i + 1
puts 'I have a bigger, better number than you, and it is ' + favorite_num.to_s + '.'

# Address: https://github.com/aalcesto23/phase-0/blob/master/week-4/address/my_solution.rb

# Math: https://github.com/aalcesto23/phase-0/blob/master/week-4/math/my_solution.rb

#Reflection:

#How do you define a local variable?

# Local variables are variables that are valid in the local scope, so to define it you will need to use a lowercase letter and it must declare a value to the variable.

#How do you define a method?

# First you must enter "def" before the word you are using to define your method. Then you will use "puts" to add a value to the method and "end" to close it.

#What is the difference between a local variable and a method?

# Local variables are only valid in their local scope, while methods can be used to perform the same task multiple times. Local variables can be used in methods, but not vice-versa. Methods cuts down additional code that you would normally need to type out each time, such as when you are calculating something.

#How do you run a ruby program from the command line?

# ruby file-name.rb

#How do you run an RSpec file from the command line?

# rspec spec-file-name.spec

#What was confusing?


# I thought using the rspec to check your code was a little confusing. I had trouble reading the return errors and finding out what was wrong with my code. A lot of times I ended up just playing around with my code until I found what was wrong, rather than being able to break it down from the rspec error list.
