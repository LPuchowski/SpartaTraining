// Add item to list

// var parent = document.getElementById("list");
//
// var li = document.createElement("li");
//
// li.innerHTML = "this is another thing";
//
// parent.appendChild("li");

$(document).ready(function() {

  // var newItem = $("<li>Learn jQuery</li>");
  //
  // $("#list").append(newItem);
  //
  // $("#list");
  updateCount();
  addDoneListener();

  function updateCount(){
    var listLength = $("li.todo").length;
    $("#count").html(listLength);
  }

  function randomItem(){
    var items = ["Go to Greggs", "Play Football", "Play Kingdom Hearts"];

    var random = Math.floor(Math.random() * (items.length));
    return items[random];
  }

  $("#btn").click(function(){
    var newItem = randomItem();
    $("#list").append("<li class='todo'>" + newItem + "<button type='button' class='markdone'>Mark as Done</button></li>");
    updateCount();
    addDoneListener();
  })

  function addDoneListener(){
    $(".markdone").click(function(){
      $(this).hide();
      $(this).parent().addClass("done");
      $(this).parent().removeClass("todo");
      updateCount();
    })
  }


    // $("h1").css("background-color", "lavender").html("This has been changed");

  // var items = document.getElementsByTagName(("li");
  //
  // for (var i = 0; i < items.length; i++) {
  //   items[i].classList.add("done");
  // }

    // $("li").addClass("done");

  // var btn = document.getElementById("btn");
  // btn.addEventListener("click", function(){});

  // $("#btn").on("click", function(){
  //   alert("Stop clicking me!!!!");
  // })

  // $("#btn").click(function(){
  //   alert("Stop clicking me!!!!");
  // })

});
