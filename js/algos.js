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
    // loop through object2:
      // If (object1's KEY == object2's [KEY2]) _AND_ (the value at object1[KEY] == the value at object2[KEY2])
        // set match to true
  // return match




// DRIVER CODE:  - - - - - - - - - - - - - - - - - - - -

//RELEASE 0
console.log(longest(myArray1));
console.log(longest(myArray2));
console.log(longest(myArray3));
console.log(longest(myArray4));