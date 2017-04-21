// RELEASE 0 - - - - - - - - - - - - - - - - - - - -
// write a function that takes an array of words/phrases and returns the longest one.

// Pseudocode
// Declare a function that takes in an array.
// Create a variable 'longestWord' that holds an empty string.
// Loop through the words in the array:
  // If the [current item] is longer than 'longestWord',
    // assign the current item to 'longestWord'.
// return longestWord

myArray1 = ["alpha", "bravo", "charlie", "delta", "echo", "foxtrot"];
myArray2 = ["alpha", "bravo"];
myArray3 = ["hello", "hallo"];
myArray4 = ["How", "does", "string", "comparison", "work", "in JavaScript?"];

function longest(arr) {
  // Create a variable 'longestWord' that holds an empty string.
  var longestWord = "";

  // Loop through the words in the array:
  for (var i=0; i < arr.length; i++) {

    // If the [current item] is longer than 'longestWord',
    if (arr[i].length > longestWord.length) {

      // assign the current item to 'longestWord'.
      longestWord = arr[i];
    };
  };
  return longestWord;
}

// RELEASE 1 - - - - - - - - - - - - - - - - - - - -
// Write a function that takes two objects and checks to see if the objects share at least one key-value pair.

// Pseudocode
// Declare a function that takes in two objects: 'object1', 'object2'
  // Create a variable 'match' and set it to false.
  // Loop through object1. For each KEY:
    // Loop through object2:
      // If (object1's KEY == object2's [KEY2]) _AND_ (the value at object1[KEY] == the value at object2[KEY2])
        // set match to true
  // return match


// Declare a function that takes in two objects: 'object1', 'object2'
function findMatch(object1, object2) {

  var match = false;

  // Loop through object1. For each KEY:
  for (var key1 in object1) {

    // loop through object2 to see if its key matches AND the value at its key matches the value currently at object1[key1].
    for (var key2 in object2) {
      if (key1 == key2 && object1[key1] == object2[key2]) {
        match = true;
      };
    };

  };

  return match
}


// RELEASE 2 - - - - - - - - - - - - - - - - - - - -
// Write a function that takes an integer and returns an array with that many items. Each item should be a string of random characters and should also have a random length between 1 and 10.

// Pseudocode
// Declare a function that takes an integer.
  // Create a variable 'randomWords' and assign it an empty array.
  // Create a variable 'alphabet' assigned with a string containing the alphabet.
  // In a loop that runs the amount of times indicated by the integer:
    // Create an variable 'word' and assign it an empty string.
    // In a loop that runs (random 1-10) times:
      // Pick a letter from 'alphabet' and add it to 'word'.
    // push the word to 'randomWords'.
  // Return randomWords.




// DRIVER CODE:  - - - - - - - - - - - - - - - - - - - -

  // RELEASE 0
  console.log(longest(myArray1));
  console.log(longest(myArray2));
  console.log(longest(myArray3));
  console.log(longest(myArray4));


  // RELEASE 1
  console.log(findMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
  console.log(findMatch({name: "Steven", age: 54}, {name: "Tamir", age: 53}));
  console.log(findMatch({lastName: "Tamir", dogs: 2, from: "San Francisco"}, {firstName: "Tamir", cats: 2, from: "New York"}));
  console.log(findMatch({lastName: "Tamir", cats: 2, from: "San Francisco"}, {firstName: "Tamir", cats: 2, from: "New York"}));