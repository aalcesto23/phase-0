// Person 1 - Tests to User Stories

// As a user, I want to use three functions to determine the sum, mean, and median of the numbers from 2 lists, 
// one of odd length and the other of even length. The three functions are:
// 1) sum
    // - If I put in a list of numbers of odd length into the sum function, I will get the sum of all the values from that list.
    // The same result will happen if I pass in a list of numbers of even length into the sum function.
// 2) mean
    // - If I pass in the odd length #'s list into the mean function, I will get the average of those numbers. 
    // Same result will happen if I pass the even length #'s list.
// 3) median
    // - If I pass in the odd length #'s list into the median function, I will get the median value of those numbers. 
    // Same result will occur if I pass the even length #'s list.

// Person 2 - Pseudo Code
// Create a function that separates an array of numbers into two arrays, one with even numbers and one with odd numbers
// - set array 1 equal to input array
// - create a second array variable that is equal to an empty array
// - create a third array variable that is equal to an empty array
// - loop the first array
// 	- IF the (counter plus 2) is divisible by two with a remainder of zero
// 		- add the number from array 1 to array 3
// 	- ELSE
// 		- add the number from array 1 to array 2
// - call array 2
// - call array 3

// Create a function to find the sum of an array
// - loop through selected array
// 	- create iterator, index that is equal to 0
// 	- get the length of the array
// 	- set the sum of the array equal to 0
// 	- set the condition for the index is less than the length
// 	- add up values
// - return sum

// Create a function that finds the average of the arrays
//  - take the sum of each array
//  - take the sum of the selected array and divide it by the length of the array
//  - retrun the value

// Create a function that finds the median of the odd or even array
// - sort the array from smallest to largest integer
// - set a variable equal to half of the length of the array
// - IF the length of the array is divisible by 2
//	 - return half
// - ELSE
//   - return half minus one, add it to half, divide the sum by two