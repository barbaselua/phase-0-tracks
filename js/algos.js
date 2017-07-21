/*
declare a function that takes an array as parameter
	declare a variable to be used to store the longest element of the array
	for now the variable will be an empty string	
	iterate through every element in the array
		set the counter at 0 
		set the 'WHILE' condition - the iteration will take place as long as our condition is false
		increment the counter by 1
		declare a conditional statement
			compare the array element with the variable
			IF the array element is longer than the variable
			assign the array element to the variable
	return the variable
*/
function theLongestElement(array) {
	longest = "";
	for (var i = 0; i < array.length; i++) {
		if (array[i] > longest) {
			longest = array[i];
		}
	}
	return longest;
}
