=begin
	
Pseudo Code:

Input: one argument, a list of people in an array
Output: groups of 4-5 people from the list

- accepts one argument, a list of people
- break groups into groups of 4
- IF the all the groups consist of 4 people, return the groups
- ELSIF all the groups consist of 4 people, but there is one group that consist of one person, add that one person to one of the groups of four
- ELSIF all the groups consist of 4 people, but there is one group that consist of two people, add one person to a group of four and the other to another group of 4
- ELSIF all the groups consist of 4 people, but there is one group of three people, disperse the three people to three groups of four
=end

# Initial Test:
# accountability_groups(list)

# numbers represent names

# 1. list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
# 2. list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
# 3. list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22]
# 4. list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,]

# Refactored Solution

def accountability_groups(list)
  groups = list.each_slice(4).to_a
  first_group = groups.first
  second_group = groups[1]
  third_group = groups[2]
  last_group = groups.last
  if groups.count == 4
    p groups
  elsif last_group.count == 1
    first_group.concat(last_group)
    groups.delete(last_group)
  elsif last_group.count == 2
    last_group.each_slice(2).to_a
    first_group.push(last_group[0])
    second_group.push(last_group[1])
    groups.delete(last_group)
  elsif last_group.count == 3
    first_group.push(last_group[0])
    second_group.push(last_group[1])
    third_group.push(last_group[2])
    groups.delete(last_group)
  end
  p groups
end

=begin
	
- What was the most interesting and most difficult part of this challenge?

I think the most interesting thing about this challenge was also the most difficult thing, which was the restrictions on the group sizes. So if there was a group less than four, you would need to add them to other groups. It was difficult dispersing the extra people into other groups evenly.

- Do you feel you are improving in your ability to write pseudocode and break the problem down?

I still find it difficult breaking down the problem into pseudo code, though I do feel like I am getting better. I think that the most difficult part is not being too vague. A lot of times I tend to group together my pseudo code, so it is harder to break it down when I am coding.

- Was your approach for automating this task a good solution? What could have made it even better?

I think it was a good solution. I think it might have been nice to make it randomized because my code currently puts the names into groups of four based on the initial array of names received.

- What data structure did you decide to store the accountability groups in and why?

I used an array because arrays can be broken down easily to sub-arrays and can be added to other arrays easily.

- What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

While I was refactoring I looked through Ruby docs to find methods, and found out there are so many different methods out there that can change your code in the same way. One method I learned was .slice() to split up an array into sub-arrays within the array.

	
end