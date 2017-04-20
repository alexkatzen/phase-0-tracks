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


// create a function that takes in both arrays of the same length (keys_array and values_array)
  // if keys_array and values_array are not the same length, return an error.

  // create a variable 'newObject' to hold the object that we create.

  // loop through the keys_array from the beginning to the end.
    // for each item in the keys array, assign that item as a key who's value is the corresponding item in the value array.

  // return the newObject
