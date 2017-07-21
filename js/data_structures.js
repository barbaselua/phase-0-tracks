//release 0

var colors = ["red", "green", "blue", "white"];
var names = ["Black Beauty", "Seabuiscuit", "Ed", "Epona"];
colors.push("orange");
names.push("Horsey McHorseface");

//release 1 

/*colors.push("green")- if trying to execute this after 
adding the code our hash will not be populated 
because the length of names 
and the length of colors are not equal. the program 
will print out the message in the conditional statement.
*/
var keysAndValues = [names, colors];
var horses = {}
if (names.length != colors.length) {
	console.log("Please make sure you are not missing anything.")
} else {
	for (var y = 0; y < names.length; y++) {
		horses[names[y]] = colors[y];
		keysAndValues.push(horses)
	}
}
console.log(horses);

//release 2




