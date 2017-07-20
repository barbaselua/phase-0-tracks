/*create a function that takes a string as a parameter
	declare an empty variable that will store the reversed string
	iterate through every letter in the string
  	set our counter
   	set the 'while' condition 
   	increment/decrement out counter
   	return the new string
*/

function reverse(string) {
	var newString = "";
	for (var i = string.length - 1; i >= 0; i--) {
		newString += string[i];
	}
	return newString;
}

// driver code 
var reversedString = (reverse("hello"));
if (reversedString.length <= 2) {
	console.log("Not worth the trouble of running this method.");	
} else {
	console.log("Here is your reversed word: " + reversedString + ".");
}


/* I misread instruction #5 at first and modified my
function so that it runs if the length condition is met. 
after I had already modified it, I reread the instruction
and realised the condition was supposed to be in the driver
code. I thought it does no harm to just leave this function
here.
function reverse(string) {
	var newString = "";
	if (string.length <= 2) {
		console.log("Not worth the trouble of running this method.")
	} else {
		for (var i = string.length - 1; i >=0; i--) {
			newString += string[i];
	}
	console.log(string + " reversed is " + newString + ".")
	return newString;
	}
}
reverseString("hi");
*/