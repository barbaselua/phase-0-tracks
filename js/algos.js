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
