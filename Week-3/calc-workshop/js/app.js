// Calculator

var tryAgain = true;

while (tryAgain) {
  var result = null;

  // User Input
  var option_choice = prompt("Would you like (1) Basic Functions or (2) Advanced Functions?");

  while (option_choice != 1 && option_choice !=2) {
    var option_choice = prompt("Invalid Selection. Would you like (1) Basic Functions or (2) Advanced Functions?");
  }

  if (option_choice == 1) {
    // Basic Operations
    var operation_choice = prompt("Do you want to (a)ddition, (s)ubtraction, (m)ultiplication or (d)ivision?") || "a";

    var num1 = parseInt(prompt("What is your 1st number?"));
    var num2 = parseInt(prompt("What is your 2nd number?"));
    switch (operation_choice) {
      // Addition
      case "a":
      result = num1 + num2;
      break;
      // Subtraction
      case "s":
      result = num1 - num2;
      break;
      // Multiplication
      case "m":
      result = num1 * num2;
      break;
      // Division
      case "d":
      result = num1 / num2;
      break;
      default:
      console.log("Something went wrong");

    }
  } else {
    // Advanced Operations
    var operation_choice = prompt("Do you want (p)ower or (s)quare root?)");

    var num1 = parseInt(prompt("What is your 1st number?"));
    // Don't prompt for second number if square root is selected
    if (operation_choice != "s") {
      var num2 = parseInt(prompt("What is your 2nd number?"));
    }

    // Power
    if (operation_choice == "p") {
      result = Math.pow(num1, num2);
      // Square root
    } else if (operation_choice == "s") {
      result = Math.sqrt(num1);
    }

  }

  // Display Answer
  if (result !== null) {
    alert("Your answer is " + result);
  }

  tryAgain = !prompt("Press enter to continue, or (q) to quit");

}
