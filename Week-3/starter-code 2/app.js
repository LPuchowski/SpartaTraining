// 1. Write a function called 'multiply' that multiplies two numbers and returns the result
function multiply (a, b) {
  return a * b;
}

// 2. Write a function called 'addThree' that adds three numbers together and returns the result

function addThree (a, b, c) {
  return a + b + c;
}

// 3. Write a function called 'smallestNumber' that returns the smaller of 2 numbers

function smallestNumber (a, b) {
  if (a < b) {
    return a;
  } else {
    return b;
  }
}

// 4. Write a function called 'maxOfThree' that returns the largest of 3 numbers

function maxOfThree (a, b, c) {
  if (a > b && a > c) {
    return a;
  } else if (b > a && b > c) {
    return b;
  } else {
    return c;
  }
}

// 5. Write a function called 'reverseString' that returns the reverse a string

function reverseString(a) {
  return a.split('').reverse().join('')
}

// 6. Write a function called 'disemvowel' that returns a string with the vowels stripped out

function disemvowel (a) {
  return a.split('a').join('').split('e').join('').split('i').join('').split('o').join('').split('u').join('')
}

// 7. Write a function called 'removeOdd' that removes all ODD number from an array

function removeOdd (a) {
  for (var i = 0; i < a.length; i++) {
          // here
          while (a[i] % 2) {
              a.splice(i, 1);
          }
      }
      return a;
    }

// 8. Write a function called 'removeEven' that removes all EVEN number from an array

function removeEven (a) {
  for (var i = 0; i < a.length; i++) {
    while ((a[i] % 2) == 0) {
      a.splice(i, 1);
    }
  }
  return a;
}

// 9. Write a function called 'longestString' that takes an array of strings and returns the string with the longest character length

function longestString (a) {
  var p = a[0];
  var q;
  for (var i = 0; i < a.length; i++) {
    q = a[i];
    if (q.length > p.length) {
      p = q;
    }

  }
  return p;
}

// 10. Write a function called 'allElementsExceptFirstThree' that discards the first 3 elements of an array,
// e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]

function allElementsExceptFirstThree (a) {
  a.reverse();
  for (var i = 0; i < 3; i++) {
    a.pop();
  }
  a.reverse();
  return a;
}

//#### BONUS ####

// 11. Write a function called 'convertArrayToAnObject' that turns an array (with an even number of elements) into a hash, by
// pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
// {'a' => 'b', 'c' => 'd'}

function convertArrayToAnObject (a) {
  var obj = {}
  for (var i = 0; i < a.length; i++) {
    if ((i % 2) == 0) {
      obj[a[i]] = a[i+1];
    }
  }
  return obj;
}

// 12. Write a function called 'fizzBuzz' that takes any number and returns a value based on these rules

// But for multiples of three print "Fizz" instead of the number
// For the multiples of five print "Buzz".
// For numbers which are multiples of both three and five print "FizzBuzz".

function fizzBuzz (a) {
  if (!(a % 3) && !(a % 5)) {
    return "FizzBuzz";
  } else if (!(a % 3)){
    return "Fizz";
  } else if (!(a % 5)) {
    return "Buzz";
  }
}
