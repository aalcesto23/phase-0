# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2.25] hours on this challenge.


# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # set letters equal to b-i-n-g-o and use random selection for numbers one up to one hundred

# Check the called column for the number called.
  # iterate through each sub array if the number is vailable for the corresponding column (use index)

# If the number is in the column, replace with an 'x'
  #IF the number in the call is within one of the sub arrays, replace it with 'X'
  #ELSE print a string to wait for next turn

# Display a column to the console
  #print out each row of the bingo board by calling each item within the main array

# Display the board to the console (prettily)
  #print out each row of the bingo board by calling each item within the main array

# Initial Solution

# class BingoBoard
#   def initialize(board)
#     @bingo_board = board
#     @letters = ["B", "I", "N", "G", "O"]
#   end
#   def call
#     @call = []
#     @column = @column = @letters[rand(@letter.length) -1]
#     @number = rand(1..100)
#     p @column
#     p @number
#     @call.push(@column).push(@number)
#     p @call.join
#   end
#   def check
#     @bingo_board.each do |x|
#       if x[@letters.index(@column)] == @number
#         x[@letters.index(@column)] = 'X'      
#       else
#         puts "Better luck next time!"
#       end
#     end
#   end
#   def display
#     p @letters
#     p @bingo_board[0]
#     p @bingo_board[1]
#     p @bingo_board[2]
#     p @bingo_board[3]
#     p @bingo_board[4]
#   end
# end

# Refactored Solution

class BingoBoard
  def initialize(board)
    @bingo_board = board
    @letters = ["B", "I", "N", "G", "O"]
    @number = rand(1..100)
  end
  def call
    @call = []
    @column = @letters.sample
    @call.push(@column).push(@number)
    p @call.join
  end
  def check
    @bingo_board.each do |row|
      if row[@letters.index(@column)] == @number
        row[@letters.index(@column)] = 'X'      
      else
        puts "Better luck next time!"
      end
    end
  end
  def display
    p @letters
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

# I think the outline for the pseudo coding for this challenge made it a little confusing, especially since I ended up coding the problem into a different order. Overall it wasn't too difficult pseudo coding because it operate similar to the game, except more broken down.

# What are the benefits of using a class for this challenge?

# The biggest benefit was being able to use instance variables to they can translate into other methods.

# How can you access coordinates in a nested array?

# You would do it similarly accessing coordinates within a normal array, but you would need to map to that array first. So for example, array[0][1][1] would signify the first item within an array has an array as the second item that also contains an array as the second item.

# What methods did you use to access and modify the array?

# It was my first time using index and I used each to iterate through the array.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

# One method I learned was sample, which helped me select a random letter from b-i-n-g-o when calling a column. The way you would use it is first you would need set an array equal to the letters within an array. Then you will take the array name and put .sample (array_name.sample).

# How did you determine what should be an instance variable versus a local variable?

# It was just a matter of thinking if I will need this variable within another method it is an instance variable, if not then it will most likely be a local variable.

# What do you feel is most improved in your refactored solution?

# I changed the naming conventions which makes it more readable and used some methods to make it more concise.
