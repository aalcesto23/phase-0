// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var dbcFunds = 12000;
var payment = 11000;
dbcFunds = dbcFunds - payment;
console.log(dbcFunds);

// Favorite Food

var favoriteFood = Number(prompt("What is your favorite food?"));
alert("Hey! That's my favorite food too.");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// looping a triangle

//what I originally thought it would be
// var triangle = "#";
// var counter = 0;
// while (triangle.length <= 7) {
// 	console.log(triangle);
// 	triangle = triangle + "#";
// }

for (var triangle = "#"; triangle.length < 8; triangle += "#")
  console.log(triangle);

// Functions

// Complete the `minimum` exercise.

function min(x, y) {
  if (x < y)
    return x;
  else
    return y;
}
// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	firstName: 'Alan'
	lastName: 'Alcesto'
	age: 24
	favoriteFoodOne: 'bread'
	favoriteFoodTwo: 'rice'
	favoriteFoodThree: 'carrots'
	quirk: 'I hate eggs, the offend all five of my senses.'
}