// RELEASE 0
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

// DRIVER CODE
console.log(longest(myArray1));
console.log(longest(myArray2));
console.log(longest(myArray3));
console.log(longest(myArray4));