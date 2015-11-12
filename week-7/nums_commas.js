// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Luis Plaz.

// Pseudocode



// Initial Solution

// function separateComma(num_int) {

//   var string_num = num_int.toString();
  
//   var starting_end = string_num.slice(-3);
//   var i = -3;
  
//   while(string_num.length + i > 0) {
//     i += -3;
//     starting_end = string_num.slice(i,i+3) + "," + starting_end;
//   }
//   return starting_end;
// };

// console.log(separateComma(100000000000000))

// Refactored Solution

function separateComma(num_int) {

console.log(num_int.toLocaleString('en', { maximumSignificantDigits: 3 }));
};

separateComma(100000000000000)

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// Think that you need to break down the problem down similar to how you would in Ruby. It was hard looking at the problem without Ruby methods in mind.

// What did you learn about iterating over arrays in JavaScript?

// Javascript doen't have things like map or collect, so you need to use the index values to iterate through the array.

// What was different about solving this problem in JavaScript?

// Ruby has more useful built in methods that make the challenge easier. My partner and I struggled with debating on what type of loop to use. Initially we used a for loop, but it excluded the first digit. We then switched over to a while loop, but we struggled with the parameters for slice.

// What built-in methods did you find to incorporate in your refactored solution?

// We initially used slice because we were familiar with it from Ruby, but while we were looking around the web we found toLocaleString which took locale preferences for a string and applied a comma after maximum significant numbers of 3. Using it almost felt like cheating.
