 // JavaScript Olympics

// I paired [with: Will Granger] on this challenge.

// This challenge took me [1.25] hours.



// Bulk Up

var sarah = { name: 'Sarah Hughes', event: 'Women\'s Singles'};
var usain = { name: 'Usain Bolt', event: 'Running'};

var athletes = [sarah, usain]

var win = function() {
  for(var i = 0; i < athletes.length; i++){
  console.log(athletes[i].win = athletes[i].name + " won the " + athletes[i].event + ".")
  };
};

// sarah.win
// console.log(athletes[0].name)
console.log(win(athletes))
// Jumble your words

var str = "I love coding!";

function reverse(str) {
  console.log(str.split('').reverse().join(''))
}
reverse(str)

// 2,4,6,8
var array = [1, 2, 3, 4, 5, 6]

function evenNumbers(array) {
  var newArray = [];
  for(var i =0; i < array.length; i++){
    if (i % 2 === 0) {
      newArray.push(i)
      };
  };
  console.log(newArray)
};
console.log(evenNumbers(array))

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflections

// What JavaScript knowledge did you solidify in this challenge?

//  - I think we struggled with containing our code. For the even numbers assignment our code did not work because it was not contained properly. Also, I think that I better understand how the for loop works and how to apply it. I would not say that I solidified the idea of constructor functions, but it is something new that I learned about and better understand.

// What are constructor functions?

//  - Constructor functions are a way of creating objects. It allows you to use different properties on multiple methods, all within the constructor.

// How are constructors different from Ruby classes (in your research)?

//  - I think the biggest difference is that properties can be altered at any time without it affecting previous iterations. In Ruby if you initialize something, it will always equal whatever you set it equal to.
