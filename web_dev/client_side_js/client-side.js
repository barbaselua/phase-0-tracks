// alter page
document.body.style.backgroundColor = "orange";

photo.style.border = "2px solid black";
document.body.style.color = "green";
// FUNCTIONS:
// hide photo - call the function 'blendLizard' with an event (action), do this 'hide photo'
function blendLizard (event) {
  photo.hidden = true

// reveal photo - call the function 'revealLizard' with an event (action), do this 'reveal photo'
function revealLizard (event) {
  photo.hidden = false
}
// create variables to call on
var blendButton = document.getElementById("blend");

var revealButton = document.getElementById("reveal");

var photo = document.getElementById("lizard-photo");

// UI driver code with action
blendButton.addEventListener("click", blendLizard)

revealButton.addEventListener("click", revealLizard)