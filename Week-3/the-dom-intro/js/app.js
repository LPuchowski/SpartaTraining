console.log("Loaded");

function addListItem(value) {

  var list = document.getElementById('list');
  var listItem = document.createElement("li");
  listItem.innerHTML = value;
  list.appendChild(listItem);

}

var shoppingList = ["sugar", "spice", "all things nice"];

// Write a loop to add shopping list to unordered list

for (var i = 0; i < shoppingList.length; i++) {
  addListItem(shoppingList[i]);
}

// Set every other list item to have class of even

var list_items = document.body.children[1].children[0].children;

for (var i = 1; i < list_items.length; i+=2) {
  list_items[i].className = "even";
}

// Update span count to be the number of items in the list

// var span_count = document.body.children[2].children[0];
//
// for (var i = 0; i < list_items.length; i++) {
//   span_count++;
// }

document.body.children[2].children[0].innerHTML = list_items.length;
