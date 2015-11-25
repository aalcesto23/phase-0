// Pseudo Code

// 1. Create a new list: 
// -Create a variable and set to an empty object.
// 2. Add an item with a quantity to the list: 
// -The function will take three arguments an object, a prop, and the quantity (value)
// -Match the item and quantity for the object.
// 3.Remove an item from the list:
// -The function will accept two arguments the list and item I am trying to remove.
// -Check if the item exists in the list.
// -Compare the item to the argument
// -If the argument is true then remove the item.
// 4.Update quantities for items in your list
// -We will have three arguments the list, item, and quantity.
// -Iterate through the list
// -If the item is in the list then it will update the quantity of said item
// -If the item does not exist put item in and quantity in list.
// -(optional) be able to update item name
// 5.Print the list (Consider how to make it look nice!)
// -Return the list the list with a nice formatting.
// -loop through the list and print out each item with quantity


//Ruby Solution

// list_new = Hash.new

// def add(list, item, qty)
//   list[item] = qty
//   list
// end

// def remove(list, item)
//   list.delete(item) if list[item]
//   list
// end

// def update(list, item, qty)
//   list[item] = qty if list[item]
//   list
// end

// def print_list(list)
//   list.each do |item, qty|
//     puts "#{item} : #{qty}"
//   end
// end



// my_list = list_new
// print_list( add(add(my_list, "cats", 2), "dogs", 3) )

//JavaScript Solution

//Initial Solution

// var object = {};

// var add = function(list, item, qty){
//   list[item] = qty
//   return list
// };

// console.log(add(new_list, "apples", 3))

// var remove = function(list, item){
//   if (list[item]){
//     delete list[item];
//     return list;
//   };
// };


// var update = function(list, item, qty){
//   if (list[item]){
//     list[item] = qty;
//     return list;
//   };
// };

// var printList = function(list){
//   console.log("Grocery List:")
//   for(var i in list){
//     console.log(i, list[i]);
//   };
// };


// var myList = object;
  
// add(myList, "cats", 1);
// add(myList, "dogs", 2);
// add(myList, "hats", 3);
// update(myList, "cats", 5);
// remove(myList, "dogs");
// printList(myList);

//Refactored

var newList = {};

var addItem = function(list, item, qty){
  list[item] = qty
  return list
};

var removeItem = function(list, item){
  if (list[item]){
    delete list[item];
    return list;
  };
};


var update = function(list, item, qty){
  if (list[item]){
    list[item] = qty;
    return list;
  };
};

var printList = function(list){
  console.log("Grocery List:")
  for(var i in list){
    console.log(i, list[i]);
  };
};


var myList = newList;
  
addItem(myList, "cats", 1);
addItem(myList, "dogs", 2);
addItem(myList, "hats", 3);
update(myList, "cats", 5);
removeItem(myList, "dogs");
printList(myList);

// Reflection

// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

// - I reviewed creating and manipulating objects. I went over looping through an object using a for loop on an object.

// What was the most difficult part of this challenge?

// - The most difficult part was creating the printList function. I wasn't sure on how to translate .each do to JavaScript. Originally, I used it to print out the keys and values of the hash. I thought about it and a for in loop does the same thing.

// Did an array or object make more sense to use and why?

// - I used an object because like Ruby's keys and values, objects have properties and values.
