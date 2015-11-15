 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: do battle as the the cat warrior with the yarn monster
// Goals: defeat the yarn monster
// Characters: cat warrior and yarn monster
// Objects: cat warrior and yarn monster
// Functions: display combat stats, battle

// Pseudocode
// - create a constructor function with characteristics of the challengers
// - set a new challenger equal to yarn monster and kitty warrior with their stats
// - create a function to announce the challengers' names
// - call announce
// - create a battle function
// 	- prompt user to enter in action (attack, dodge, get smacked)
//		- IF player chooses attack
//			- alter user of attack
//			- calculate the battle damage
//   		- alert of battle damage (health - attack)
//   		- alter of victory
//  	- ElSE IF dodge
//			- alert of dodge
//			- calculate agility difference (agility - agility)
//			- alert of successfull dodge
//			- prompt for next action (attack, dodge, get smacked)
//		- ELSE IF get smacked
//			- alter that they got smacked
//			- calculate damage
//			- alert of damage
//			- alert that they are dead
//		- ELSE
//			- alert the play that that is not an option
//			- prompt for action
// - call battle function
// Initial Code

// function Challenger(name, health, attack, agility){
// 	this.name = name;
// 	this.health = health;
// 	this.attack = attack;
// 	this.agility = agility;
// };

// var kittyWarrior = new Challenger("Bob", 100, 200, 40);
// var yarnMonster = new Challenger("Yarn-O-Mania", 100, 100, 30);

// console.log(kittyWarrior.constructor === Challenger)
// console.log(yarnMonster.constructor === Challenger)

// var announce = function(){
// 	console.log("Our new challenger " + kittyWarrior.name + " is fighting our undefeated champion " + yarnMonster.name + "!");
// };

// announce();

// var battle = function() {
// 	var battleAction=prompt("The battle is beginning!! What will you do: attack, dodge, or get smacked");
// 	if (battleAction == "attack"){
// 		alert("POW!! Paw strike of 1000 misfortunes!! You turned that monster into scraps!!");
// 		x = yarnMonster.health - kittyWarrior.attack;
// 		alert("The challenger's health is now " + x + ".")
// 		alert("You win!!");
// 	}
// 	else if (battleAction == "dodge"){
// 		alert("It's like you have cat-like reflexes?!");
// 		x = kittyWarrior.agility - yarnMonster.agility;
// 		alert("You are faster than the yarn monster by " + x + " points!")
// 		while (battleAction == "dodge"){
// 			var battleAction=prompt("What will you do next? (attack/dodge/get smacked)");
// 		};
// 	}
// 	else if (battleAction == "get smacked"){
// 		alert("You got smacked......");
// 		x = kittyWarrior.health - yarnMonster.attack;
// 		alert("You have " + x + " health.")
// 		alert("You dead......");
// 	} else {
// 		alert("Stop being a scardy-cat and choose one of the three actions");
// 		var battleAction=prompt("The battle is beginning!! What will you do: attack, dodge, or get smacked");
// 	};
// }; 

// battle();

// Refactored Code

function Challenger(name, health, attack, agility){
	this.name = name;
	this.health = health;
	this.attack = attack;
	this.agility = agility;
};

var kittyWarrior = new Challenger("Bob", 100, 200, 40);
var yarnMonster = new Challenger("Yarn-O-Mania", 100, 100, 30);

console.log(kittyWarrior.constructor === Challenger)
console.log(yarnMonster.constructor === Challenger)

var announce = function(){
	alert("Our new challenger " + kittyWarrior.name + " is fighting our undefeated champion " + yarnMonster.name + "!");
};

announce();

var battle = function() {
	var battleAction=prompt("The battle is beginning!! What will you do: attack, dodge, or get smacked");
	if (battleAction == "attack"){
		alert("POW!! Paw strike of 1000 misfortunes!! You turned that monster into scraps!!");
		damageDelt = Math.round(yarnMonster.health - kittyWarrior.attack);
		alert("The challenger's health is now " + damageDelt + ".")
		alert("You win!!");
	}
	else if (battleAction == "dodge"){
		alert("It's like you have cat-like reflexes?!");
		tooFast = kittyWarrior.agility - yarnMonster.agility;
		alert("You are faster than the yarn monster by " + tooFast + " points!");
		var battleAction=prompt("What will you do next? (attack/dodge/get smacked)");
	}
	else if (battleAction == "get smacked"){
		alert("You got smacked......");
		damageDelt = Math.round(kittyWarrior.health - yarnMonster.attack);
		alert("You have " + damageDelt + " health.")
		alert("You dead......");
	} else {
		alert("Stop being a scardy-cat and choose one of the three actions");
		var battleAction=prompt("The battle is beginning!! What will you do: attack, dodge, or get smacked");
	};
}; 

battle();



// Reflection
//
// What was the most difficult part of this challenge?

// - Conceptually, it was hard trying to think of a way to make an entire game out of code. Technically, I think the most difficult was getting my prompts to loop through the options after selecting a neutral prompt and making it interactive. 

// What did you learn about creating objects and functions that interact with one another?

// I learned that constructor functions make it really easy to make changes at a later time. For example, I can change the characters stats and add additional characters later. Of course, I will need to adjust the code so it can accept any character, but for now it is just two.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// - Even though it doesn't matter right now because the stats of my challengers don't require it, I added round for calculating damange. This will round the damage to the nearest integer, which will be helpful if I add additional characters later. Overall, I mainly refactored for readability, so I changed a few of the naming conventions.

// How can you access and manipulate properties of objects?

// - You can access properties of objects by typing the object name followed by the property name (objectName.propertyName) or you can also do the object name followed by the property name within brackets (objectName["propertyNAme"]). For constructor functions you can call a new variable outside of the function, and assign new properties.
//
//
//
//