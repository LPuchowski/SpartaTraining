console.log("Loaded");


document.addEventListener("DOMContentLoaded", function(){
  console.log("This code is ran when the page is finished loading!!!!");

  var button1 = document.getElementById('btn1');

  button1.addEventListener("click", function(event){
    console.log(this);
  });

  var buttons = document.getElementsByClassName("buttonrow");
  console.log(buttons);

  for (var i = 0; i < buttons.length; i++) {
    var button = buttons[i];

    button.addEventListener("click", function(event){
      console.log(this.value + " was clicked");
    });
  }


  // button1.addEventListener("click", addClassOnClick);
  //
  function addClassOnClick(){
    button.classList.add("btnclicked");
    console.log("button was clicked");
  }

  var form = document.getElementById("form");

  form.addEventListener("submit", function(){
    console.log("Form submitted");

    event.preventDefault();

    var firstNameField = document.getElementById("firstname");

    if (firstNameField.value) {
      form.submit();
    } else {
      console.log("You must enter a name");
    }
  });

  // Bubbling

  // Get all divs
  var div1 = document.getElementById("div1");
  var div2 = document.getElementById("div2");
  var div3 = document.getElementById("div3");

  div1.addEventListener("click", function(event){
    console.log("Div1 was clicked");
  });

  div2.addEventListener("click", function(event){
    console.log("Div2 was clicked");

    event.stopPropagation();
  });

  div3.addEventListener("click", function(event){
    console.log("Div3 was clicked");
  });

});
