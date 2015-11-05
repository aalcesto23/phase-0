# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

# array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

# p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================

# p hash[:outer][:inner]["almost"][3]

# # ============================================================


# # Hole 3
# # Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # # attempts:
# # # ============================================================

# p nested_data[:array][1][:hash]

# # ============================================================

# # RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

# number_array.map! do |i|
#   if i.kind_of?(Array)
#     i.map! {|j| j + 5}
#   else
#     i + 5
#   end
# end
# p number_array
# # Bonus:

#pseudocode: 
# If element is string, << "ly"
# If array, 
# If element is string, << "ly"
# IF array,
# If element is string, << "ly"

# Initial Answer:

# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
# startup_names.map! do |element|
#   if element.kind_of?(Array)
#     element.map! do |inner|
#       if inner.kind_of?(Array)
#         inner.map! do |innermost|
#           innermost << "ly"
#         end
#       else
#         inner << "ly"
#       end
#     end
#   else
#     element << "ly"
#   end
# end
# p startup_names

# Refactored:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.map! do |element|
  if element.kind_of?(Array)
    element.map! do |inner|
      if inner.kind_of?(Array)
        inner.map! {|innermost| innermost << "ly"}
      else
        inner << "ly"
      end
    end
  else
    element << "ly"
  end
end
p startup_names

#Reflection:

# What are some general rules you can apply to nested arrays?

# I think a good way to understand retrieving a certain element within nested arrays is to work your way through each array at a time. You will want to look at the bigger picture first and work your way down.

# What are some ways you can iterate over nested arrays?

# You can use each or map to iterate over nested arrays.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

# A new method that we learned was kind_of? which allowed us to manipulate the data within the sub arrays. Using this we were able to then map to the strings and << ly to each element.
