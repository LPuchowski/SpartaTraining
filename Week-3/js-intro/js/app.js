console.log("Hello World");

var a = 5;
var b = 10;

console.log(a + b);
console.log("a is equal to " + a);

console.log(isFinite(a));

var string1 = "hello World!!!";

console.log(string1.length);
console.log(string1.substr(4, 4));

var bool1 = true;

console.log(bool1);

var empty;

console.log(typeof bool1);

var fruitarray = ["apple", "tomato", "orange", "banana"];
var mixedarray = [17, "words", true];

console.log(fruitarray.length);
console.log(fruitarray[0]);
console.log(fruitarray.indexOf("orange"));
console.log(fruitarray.indexOf("pear")); // Always "-1"
// console.log(mixedarray.indexOf([17]));

// fruitarray.push("grape");
// console.log(fruitarray);
// var last = fruitarray.pop();
//
// console.log(fruitarray);
// console.log(last);

console.log(fruitarray[fruitarray.length - 1]);
console.log(fruitarray.reverse()); // Changes variable
console.log(fruitarray);

var sliceArray = fruitarray.slice(1,4);
console.log(sliceArray);

var person = {
  key: "value",
  name: "Rob",
  eye_color: "blue",
  age: 28
}

console.log(person.name);
console.log(person.eye_color);
