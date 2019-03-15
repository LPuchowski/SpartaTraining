console.log("Page loaded");


var a = 5;
var b = 10;

multiplyTwoNumbers(a, b);

function multiplyTwoNumbers(a, b) {
  var result = a * b;
  console.log(result);
}

// Camel - thisIsCamelCase
// Capital - ThisIsCapitalCase
// Snake - this_is_snake_case
// Kebab - this-is-kebab-case

var additionResult = function() {
  num1 = prompt("give me the first number");
  num2 = prompt("give me the second number");
  // info is always returned as a string
  console.log(typeof num1);
  return num1 + num2;
}

console.log(additionResult());

alert("This is an alert!!!");
