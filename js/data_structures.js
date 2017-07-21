var colors = ["red", "green", "blue", "white"];
var names = ["Black Beauty", "Seabuiscuit", "Ed", "Epona"];
colors.push("orange");
names.push("Horsey McHorseface");
var keysAndValues = [names, colors];
var horses = {}
for(var y = 0; y < names.length; y++){
  for(var i = 0; i < colors.length; i++){
    horses[names[y]] = colors[y];
  }
  keysAndValues.push(horses)
}
console.log(horses);




