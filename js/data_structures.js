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

function Car(type, maker, color, milage, runs) {
  this.type = type;
  this.maker = maker;
  this.color = color;
  this.milage = milage;
  this.runs = runs;

  this.describeSelf = function() {
    console.log("Hey! I'm a " + color + " " + type + " made by " + maker);
  }

  this.isOld = function() {
    if (this.milage < 10000) {
      console.log("I'm still a new car");
    } else if (this.milage < 60000) {
      console.log("I'm not that old!");
    } else {
      console.log("I'm an old jalopy.");
    };
  }

  this.amIOperational = function() {
    if (runs === true) {
      console.log("Yes, I am operational!!");
    } else {
      console.log("Something's up with me :(");
    }
  }

}

var car1 =  new Car("sedan", "BMW", "Black", 7, true);
console.log(car1);
car1.describeSelf();
car1.isOld();
car1.amIOperational();

console.log("- - - - - - - - ")
var car2 =  new Car("pickup truck", "Toyota", "Green", 54245, true);
console.log(car2);
car2.describeSelf();
car2.isOld();
car2.amIOperational();

console.log("- - - - - - - - ")
var car3 =  new Car("mini-bus", "Volkswagen", "yellow", 233948, false);
console.log(car3);
car3.describeSelf();
car3.isOld();
car3.amIOperational();

// experimenting with looping through keys, values of an object
for (var key in car3) {
  console.log("The key is " + key);
  console.log("The value is " + car3[key]);
}

// Advantages to using a a constructor function:
  // Ability to create many objects that share the same properties.
  // Persistence of the function.

// Disadvantages:
  // More code to write.
  // Requires having to use 'New' to create the objects.