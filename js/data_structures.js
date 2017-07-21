var colors = ["red", "green", "blue", "white"];
var names = ["Black Beauty", "Seabuiscuit", "Ed", "Epona"];
colors.push("orange");
names.push("Horsey McHorseface");
//colors.push("green")- if trying to execute this
// our hash will not be populated because the length of names 
// and the length of colors are not equal and
// our program will print out
// the message in the conditional statement.
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




