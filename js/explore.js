function reverse(word) {
  //declare a variable 'reversedWord' that holds an empty string
  var reversedWord = "";

  //save length of the given word
  var wordLength = word.length;
  
  //in a loop, iterate through the given word starting at the end
  for (i = wordLength-1; i>=0; i--) { 
    //add character to reversedWord
    reversedWord += word.charAt(i)
  }
  
  return reversedWord
}

console.log(reverse("Crystal"));