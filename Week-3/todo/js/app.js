console.log("Loaded");

document.addEventListener("DOMContentLoaded", function(){

countListItems();
  // Form to catch info
  var submitBtn = document.getElementById("additem");
  var formText = document.getElementById("newitem");

  submitBtn.addEventListener("click", function(event){
    event.preventDefault();
    var userInput= formText.value;
    addListItem(userInput);
    countListItems();
    formText.value = "";
  });
  // Add items to list
  function addListItem(item){
    var ul = document.getElementById("list");
    var li = document.createElement("li");

    li.innerHTML = item;
    ul.appendChild(li);
  }

  // Update count items left to do
  function countListItems(){
    var listItems = document.getElementsByTagName("li");
    counter = document.getElementById("count");

    counter.innerHTML = listItems.length;
  }

  // Remove last item form list
  var remove = document.getElementById("removeItem");

  remove.addEventListener("click", function(){
    var ul = document.getElementById("list");
    var listItems = document.getElementsByTagName("li");
    if (listItems.length != 0) {
      ul.removeChild(listItems[listItems.length - 1]);
    }
    countListItems();
  })

})
