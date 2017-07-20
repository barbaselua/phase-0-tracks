/*create a function that takes a string as a parameter
	declare an empty variable that will store the reversed string
	iterate through every letter in the string
  	set our counter
   	set the 'while' condition 
   	increment/decrement out counter
*/
function reverse(string) {
	var newString = "";
	for (var i = string.length - 1; i >=0; i--) {
		newString += string[i];
	}
	return newString;
}