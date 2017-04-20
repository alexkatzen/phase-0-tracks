var colors = ["Cyan", "Magenta", "Yellow", "Black"];
var horseNames = ["Ed", "Rocky", "Mr. Balboa", "Apollo"];

function addColor(color) {
  colors.push(color);
}

function addHorseName(name) {
  horseNames.push(name);
}

console.log(colors);
console.log(horseNames);

addColor("Rasberry");
addHorseName("Fluffy");

console.log(colors);
console.log(horseNames);

//PSEUDOCODE
// create a function that takes in both arrays of the same length (keys_array and values_array)
  // if keys_array and values_array are not the same length, return an error.

  // create a variable 'newObject' to hold the object that we create.

  // loop through the keys_array from the beginning to the end.
    // for each item in the keys array, assign that item as a key who's value is the corresponding item in the value array.

  // return the newObject



// create a function that takes in both arrays of the same length (keys_array and values_array)

function makeRanch(horses, colors) {
  // if keys_array and values_array are not the same length, return an error.
  if (horses.length != colors.length) {
    console.log("Please provide two lists of the same length.");
  } else {

  // create a variable 'newObject' to hold the object that we create.
  var newObject = {};

  // loop through the keys_array from the beginning to the end.
    for (var i = 0; i<= horses.length-1; i++) {

    // for each item in the keys array, assign that item as a key who's value is the corresponding item in the value array.
    newObject[horses[i]] = colors[i];

    }
    return newObject;
  }
}

console.log(makeRanch(horseNames, colors));