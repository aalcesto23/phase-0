# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Trevor Newcomb ].
# I spent [2] hours and [15] minutes on this challenge.

# Pseudocode
=begin
- define the class
- check if input is a valid number (16 digits)
- splits up number into single digits
- double ever other number starting from the first digit
- split numbers into single digits, double digits must be split into single digits
- add single digits together
- if the sum is divisible by 10 with a remainder of 0, there is a profit

=end

# Input: 16 digit number
# Output: true or false value
# Steps: see above

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(credit_card_number)
#     @number = credit_card_number
#     if credit_card_number.to_s.size != 16
#       raise ArgumentError.new ("Invalid Credit Card Number")
#     end
#   end
  
#   def split
#     @split = @number.to_s.split('')
#     @split.map! {|i| i.to_i}
#   end
  
#   def double
#     @doubled_array = []
#     p @split
#     p @doubled_array = @split.map!.with_index{|x,y| y % 2 == 1 ? x : x * 2}
#   end
  
#   def join_array
#     @joined_array = @doubled_array.join
#   end
  
  
#   def second_split
#     @split_array = @joined_array.split('')
#     @split_array.map! {|i| i.to_i}
#   end
  
#   def total
#     @summed_array = @split_array.inject(:+)
#   end
  
#   def check_card
#     split
#     double
#     join_array
#     second_split
#     total
#     if @summed_array.to_i % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end

# Refactored Solution

class CreditCard
  def initialize(credit_card_number)
    @number = credit_card_number
    raise ArgumentError.new ("Invalid Credit Card Number") if credit_card_number.to_s.size != 16
  end
  
  def split
    @split = @number.to_s.split('')
    @split.map! {|i| i.to_i}
  end
  
  def double
    @doubled_array = []
    @doubled_array = @split.map!.with_index{|x,y| y % 2 == 1 ? x : x * 2}
  end
  def second_split
    @split_array = @doubled_array.join.split('')
    @split_array.map! {|i| i.to_i}
  end
  
  def check_card
    split
    double
    second_split
    @split_array.inject(:+).to_i % 10 == 0 ? true : false
    end
  end

# credit_check = CreditCard.new(3408041234567901)
# p credit_check.split
# p credit_check.double
# p credit_check.second_split
# p credit_check.check_card

# Reflection

# What was the most difficult part of this challenge for you and your pair?

# - At first our class kept on returning True. The reason was because we weren't returning the values of each method within our check_card method. Oddly enough we also initially struggled calling each method while testing.

# What new methods did you find to help you when you refactored?

# - For refactoring we didn't really use new methods because we wanted to make sure that we were using the most efficient methods in our initial solution. We mainly combined defined methods.

# What concepts or learnings were you able to solidify in this challenge?

# - I think the importance to pseudo code was really emphasized, and breaking the problem down thoroughly which made things a lot easier when making our defined methods.

