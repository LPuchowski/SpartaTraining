console.log("JS loaded");
//
// var age = prompt("How old are you?");
//
// age = parseInt(age);
//
// if (age >= 18) {
//   alert("Have a beer!!! You are old enough");
//   var choice = prompt("What beer do you want? 1) Becks or 2) Grolsch");
//
//   if (choice == "1") {
//     alert("Becks!!! Good choice!!");
//   } else {
//     alert("Poor Choice!!");
//   }
// } else {
//   alert("Go away you're too young");
// }

// var choice = prompt("Would you like 1, 2 or 3?");

// if (choice == "1") {
//   console.log("1 is the best");
// } else if (choice == "2") {
//   console.log("2 is great");
// } else if (choice == "3") {
//   console.log("3 is fine");
// } else {
//   console.log("invalid selection");
// }

// switch (choice) {
//   case "1":
//     console.log("1 is the best");
//     break;
//   case "2":
//     console.log("2 is great");
//     break;
//   case "3":
//     console.log("3 is fine");
//     break;
//   default:
//     console.log("invalid selection");
//     break;
// }
//
// var name = prompt("What is your name?");
//
// switch (name) {
//   case "Rob":
//     alert("Welcome back Rob!!");
//     break;
//   case "Louis":
//     alert("You're new here!!");
//     break;
//   default:
//     alert("I don't know who you are!!")
//     break;
//
// }

// for (var i = 0; i <= 100; i++) {
//   console.log("i is equal to: " + i);
// }
//
// var array = ["Rob", "is", "great"];
//
// for (var i = 0; i < array.length; i++) {
//   console.log(array[i]);
// }

// var i = 0;
// while (i =< 100) {
//   console.log("this loop has ran " + i + " times");
//   i++;
// }

// var i = 7;
//
// do {
//   console.log("this loop has ran " + " times");
//   i++;
// } while (i < 5);

var object = {
  key: "value",
  name: "Rob",
  eye_color: "blue",
  age: 28
}

for (var key in object) {
  console.log(key + ": " + object[key]);
}

var numarray = [1,2,3,4];

for (value of numarray) {
  console.log(value);
}
