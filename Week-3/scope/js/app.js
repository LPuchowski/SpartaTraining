console.log("Loaded");

var outsideVariable = 5;

function printWords(){
  console.log(outsideVariable);
}

printWords();

function doSomething(){
  var insideVariable = "you can't see me!!"
}

doSomething();

// console.log(insideVariable);

function first(){
  console.log("I am the first function");
}

function second(){
  first();
  console.log("I am the second function");
}

second();

var word1 = "Hello";
var word2 = "World";

function joinWordsandPrint(string1, string2){
  var combinedString = string1 + string2;

  function printString(string){
    console.log(string);
  }

  printString(combinedString);
}

joinWordsandPrint(word1, word2);
