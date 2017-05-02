console.log("It works!");

var el = document.getElementsByTagName("li");

// el[0].style.color = "red";
// el[1].style.font = "sans-serif";
// el[2].style.letterSpacing = "10px";
// el[3].style.border = "1px solid #ff00ff"
// el[4].style.backgroundColor = "yellow";
// el[5].style.letterSpacing = "5px";

// looping through elements
for (var i=0; i<el.length; i++) {
  el[i].style.color = "orange";
  el[i].style.fontFamily = "Helvetica";
}

// Creating the p element
var paragraph1 = document.createElement("p");

// Creating the text content
var paraText = document.createTextNode("Inserting a new element into the page");

// Appending the text content to the p element
paragraph1.appendChild(paraText);

// Selecting the div element by ID
var element = document.getElementById('newDiv');


// Appending the child element to the Div
element.appendChild(paragraph1);