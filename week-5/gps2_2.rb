=begin
1. Create a new list: 
-A vairable and set to an empty Hash.

2. Add an item with a quantity to the list: 
-The method will take three arguments a empty hash, a value, and a key
-Match the item and quantity for the hash.

3.Remove an item from the list:
-We will have two arguments the list and item we are trying to remove.
-Check if the item exists in the list.
-Compare the item to the argument
-If the argument is true then remove the item.

4.Update quantities for items in your list
-We will have three arguments the list, item, and quantity.
-Iterate through the list
-If the item is in the list then it will update the quantity of said item
-If the item does not exist put item in and quantity in list.
-(optional) be able to update item name

5.Print the list (Consider how to make it look nice!)
-Return the list the list with a nice formatting.
=end

list_new = Hash.new

def add(list, item, qty)
  list[item] = qty
  list
end

def remove(list, item)
  list.delete(item) if list[item]
  list
end

def update(list, item, qty)
  list[item] = qty if list[item]
  list
end

def print_list(list)
  list.each do |item, qty|
    puts "#{item} : #{qty}"
  end
end



my_list = list_new
print_list( add(add(my_list, "cats", 2), "dogs", 3) )

=begin
Reflections:

What did you learn about pseudocode from working on this challenge?

I was navigating during the pseudo code portion, but I learned it is better to really space out your steps in your pseudo code. Even though our code is pretty condenced, it helps you build upon your logic. Overall, it helps you create steps for your code.

What are the tradeoffs of using Arrays and Hashes for this challenge?

We believed that using hashes would be more beneficial is this case. The reason for this is because you would have the key (item) and the value (quantity). Arrays would have been messy because we would need to refer to the items by the number inded and need to make multiple arrays and merge them at some point (I believe, I didn't think that far into arrays). It makes sense to use hashes since the data we are receiving is already in the correct format for hashes.

What does a method return?

Implicit or explicit values of the arguments passed through the method.

What kind of things can you pass into methods as arguments?

You can pass objects, arrays, hashes, and I believe there is more but this is as far as I have learned.

How can you pass information between methods?

You can do this with the arguments.

What concepts were solidified in this challenge, and what concepts are still confusing?

I was introduced the "if" syntax in a previous challenge by one of my partners and was a little confused on how to use it for this challenge, but I was determined to use it, so my guide really helped in clarifying how to use it correctly. I think I am still having trouble with logically working through Ruby problems and translating them into a defined method. There are so many built-in methods and it is hard at times to keep those in mind when creating a method.

=end