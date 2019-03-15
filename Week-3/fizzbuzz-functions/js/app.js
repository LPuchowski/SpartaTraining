console.log("JS loaded");

// Take a range of values and for each value it will return Fizz if it is a multiple of 3, Buzz for multiples of 5, FizzBuzz for multiples of 15 and none if returns the number

// Ask the user for the range of values

var num1 = parseInt(prompt("What is the start of your range?"));
var num2 = parseInt(prompt("What is the end of your range?"));

rangeLoop(num1, num2);

// Function to loop through this range of values

function rangeLoop (num1, num2) {
  for (num1; num1 <= num2; num1++) {
    console.log(fizzBuzz(num1));
  }
}

// Function to evaluate Fizzbuzz

function fizzBuzz (num) {
  if (num % 15 == 0) {
    return "FizzBuzz";
  } else if (num % 3 == 0) {
    return "Fizz";
  } else if (num % 5 == 0) {
    return "Buzz";
  } else {
    return num;
  }
}
