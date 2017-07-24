/* release 0 (find the longest phrase)
declare a function that takes an array as parameter (INPUT)
	declare a variable to be used to store the element of the array 
	when iterating
	iterate through the array
		set the counter at 0 
		set the WHILE condition - the iteration will take place as long as our condition is false
		increment the counter by 1
			IF the array element is longer than the variable
			assign the array element to the variable
	return the variable (OUTPUT)
*/
function theLongestElement(array) {
	longest = array[0];
	for (var i = 0; i < array.length; i++) {
		if (array[i] > longest) {
			longest = array[i];
		}
	}
	return longest;
}
// driver code
strings = ["long", "longest", "longer"];
console.log(theLongestElement(strings));
phraseStrings = ["long phrase", "longest phrase", "longer phrase"];
console.log(theLongestElement(phraseStrings));
numbers = [2, 4, 15, 234, 0]
console.log(theLongestElement(numbers));


/* release 1 (find a key-value match)
declare a function that takes 2 objects as parameters. (INPUT)
	declare variables to store each objects' keys 
	declare a variable that will store each key-value pair when iterating
	iterate through the array
		set the counter at 0
		set the WHILE condition
		increment the counter by 1
		IF a match of key-value is found 
		the function should evaluate to true
		else false. (OUTPUT)
*/
 function match(one, two) {
 	var oneKeys = Object.keys(one);
 	var twoKeys = Object.keys(two);
 	var keys = '';
 	for (var i = 0; i < oneKeys.length; i++) {
 		keys = oneKeys[i];
 		if (one[keys] == two[keys]) {
 			return true;
 		}
 	}
 			return false;	
 }

 // driver code
 // true output
 var person1 = {name: "Steven", age: 54};
 var person2 = {name: "Tamir", age: 54};
 console.log(match(person1, person2));
 // false output
 var animal1 = {animal: "Dog", legs: 4};
 var animal2 = {animal: "Doggo", legs: 3};
console.log(match(animal1, animal2));


/* release 2 (generate random test data)
declare a function that takes an integer as parameter (INPUT)
  create a new array
  set up a for loop to run for as many times as the parameter indicates
  	set the counter at 0
  	set the 'WHILE' condition
  	increment the counter by 1
  	declare a variable, letters, that stores the characters to be used 
  		when creating our words
  	set up an empty variable (it will store the word after randomly choosing
  		a letter and a length)	
  	set up a new for loop to run for a random number of times
  		set the counter to 0
  		generate a random number (1 to 10) using the math method
  		increment the counter by 1
  		generate a random letter using the math method	
  		pass the letters to the empty variable
  	push the words to the array
	return the array
print function
*/
function ranNum(x) {
	var arrayOfStrings = [];
	for (var k = 0; k < x; k++) {
		var letters = "abcdefghijklmnoprstuvwxyz";
		var words = "";
	  for (var i = 0; i < Math.floor((Math.random() * 10) + 1); i++) {
		  var rand_letter = Math.floor(Math.random() *(letters.length));
		  	words = words + letters.charAt(rand_letter);
		}
		arrayOfStrings.push(words)
	}
	return (arrayOfStrings);
}
// driver code
// console.log(ranNum(4));
var times = 10;
for (var i = 0; i < times-1; i++) {
  console.log(z = ranNum(3)); {
    console.log(theLongestElement(z))
  }
} 
// it doesn't always print the longest phrase.
// sometimes it does, sometimes it doesn't.