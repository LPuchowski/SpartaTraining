interval = setInterval(function(){

  ball.css({
    "left": posX + "px",
    "top": posY + "px"
  })

  var ballLeft = ball.offset().left;
  var ballRight = ballLeft + ball.width();
  var ballTop = ball.offset().top;
  var ballBottom = ballTop + ball.height();

  var containerLeft = container.offset().left;
  var containerRight = container.offset().left + container.width();
  var containerTop = container.offset().top + p;
  var containerBottom = containerTop + container.height();

  var paddleLeft = paddle.offset().left;
  var paddleRight = paddleLeft + paddle.width();
  var paddleTop = paddle.offset().top;
  var paddleBottom = paddleTop + paddle.height();

  var paddle2Left = paddle2.offset().left;
  var paddle2Right = paddle2Left + paddle2.width();
  var paddle2Top = paddle2.offset().top;
  var paddle2Bottom = paddle2Top + paddle2.height();

  paddle.css({
    "top": padposy
  })

  paddle2.css({
    "top": pad2posy
  })

  if (up) {
    if (padposy >= 3) {
      padposy -= 3;
    }
    //console.log("going up");
  }

  if (down) {
    if (padposy <= 239) {
      padposy += 3;
    }
    //console.log("going down");
  }

  if (up2) {
    if (pad2posy >= 3) {
      pad2posy -= 3;
    }
    //console.log("2 going up");
  }

  if (down2) {
    if (pad2posy <= 239) {
      pad2posy += 3;
    }
    //console.log("2 going down");
  }

  // Ball movement
  if (directionX === "+") {
    posX+=4;
  } else if (directionX === "-") {
    posX-=4;
  }

  if (directionY === "+") {
    gravityspeed += gravity;
    posY+= gravityspeed;
  } else if (directionY === "-"){
    gravityspeed += gravity;
    posY+= gravityspeed;
  }

  if (ballRight >= containerRight) {
    directionX = "-";
  } else if (ballLeft <= containerLeft) {
    directionX = "+";
  }

  if (ballBottom >= containerBottom) {
    directionY = "-";
    gravityspeed = -5;
  } else if (ballTop <= containerTop) {
    directionY = "+";
  }

  if (ballLeft <= paddleRight && ballTop < paddleBottom && ballBottom > paddleTop) {
    directionX = "+";
    //console.log("Paddle contact");
  }

  if (ballTop == paddle2Top) {
    //console.log("equal");
  }

  if (ballRight >= paddle2Left && ballTop < paddle2Bottom && ballBottom > paddle2Top) {
    // lastMoveHit = true;
    directionX = "-";
    //console.log("Paddle 2 contact");
  }

  if (ballRight > containerRight) {
    console.log("Hello");
    score1++;
    $("#scr1").html("Score 1: " + score1);
    posX = 550;
    posY = 0;
    directionX = "-";
    directionY = "+";
    gravity = 0.05;
    gravityspeed = 0;
  }

  if (ballLeft < containerLeft) {
    score2++;
    $("#scr2").html("Score 2: " + score2);
    posX = 25;
    posY = 0;
    directionX = "+";
    directionY = "+";
    gravity = 0.05;
    gravityspeed = 0;
  }

  if(score1 == 1) {
    console.log("Player " + player1 + " has won!");
    winner = player1;
    // alert("Player 1 has won!");
    //prompt("Please enter your name", "Harry Potter");
  } else if (score2 == 1) {
    console.log("Player " + player2 + " has won!");
    winner = player2;
    // alert("Player2 has won!")
    //prompt("Please enter your name", "Harry Potter");
  }

  if(winner != null) {

    alert("Winner is Player " + winner);
    round1Winners[count] = winner;
    count++;
    console.log(playerArray);
    console.log(round1Winners);
    score1 = 0;
    score2 = 0;
    $("#scr1").html("Score 1: " + score1);
    $("#scr2").html("Score 2: " + score2);
    if (roundCount > 1) {
      filtered = filtered.filter(function (el) {
        return el != null;
      });
    } else {
      filtered = playerArray.filter(function (el) {
        return el != null;
      });
    }
    console.log("Filtered is " + filtered);
    player1 = random_item(filtered);
    filtered[filtered.indexOf(player1)] = null;
    filtered = filtered.filter(function (el) {
      return el != null;
    });
    player2 = random_item(filtered);
    console.log(filtered);
    console.log(playerArray);
    winner = null;
    if (playerArray.allValuesSame()){
      alert("Round " + roundCount + " Finished!");
      alert("Winners of Round " + roundCount + " are: " + round1Winners);
      count = 0;
      roundCount++;
      playerArray = round1Winners;
      player1 = random_item(playerArray);
      playerArray[playerArray.indexOf(player1)] = null;
      filtered = playerArray.filter(function (el) {
        return el != null;
      });
      player2 = random_item(filtered);
      playerArray[playerArray.indexOf(player2)] = null;
      filtered = playerArray.filter(function (el) {
        return el != null;
      });
      roundBegin = true;

    }
    // for (var i = 0; i < playerArray.length; i++) {
    //   if (playerArray[i] != null) {
    //     round1Finished = false;
    //   }
    // }
    if (roundBegin == false) {
      playerArray[playerArray.indexOf(player1)] = null;
      playerArray[playerArray.indexOf(player2)] = null;
    }
    roundBegin = false;
    alert("Starting next game: Player " + player1 + " vs " + player2);
  }

  // console.log(i + " seconds");
  // i++;
}, 10);










} else if (score2 == 3) {
  winner = player2;
  score1 = 0;
  score2 = 0;
  $("#scr1").html("Score 1: " + score1);
  $("#scr2").html("Score 2: " + score2);
  alert("The winner is Player 2");
  if (counter >= playerArray/2 && tournament == true && winner != null) {
    counter++;
    if (roundCount > 1) {
      filtered = filtered.filter(function (el) {
        return el != null;
      });
    } else {
      filtered = playerArray.filter(function (el) {
        return el != null;
      });
    }
    player1 = random_player(filtered);
    filtered[filtered.indexOf(player1)] = null;
    filtered = filtered.filter(function (el) {
      return el != null;
    });
    player2 = random_player(filtered);
    console.log(filtered);
    console.log(playerArray);
    winner = null;

    if (playerArray.allValuesSame()){
      alert("Round " + roundCount + " Finished!");
      alert("Winners of Round " + roundCount + " are: " + round1Winners);
      count = 0;
      roundCount++;
      playerArray = round1Winners;
      player1 = random_player(playerArray);
      playerArray[playerArray.indexOf(player1)] = null;
      filtered = playerArray.filter(function (el) {
        return el != null;
      });
      player2 = random_player(filtered);
      playerArray[playerArray.indexOf(player2)] = null;
      filtered = playerArray.filter(function (el) {
        return el != null;
      });
      roundBegin = true;
    }
  }
  clearInterval(interval);
  //alert("Player2 has won!")
  //prompt("Please enter your name", "Harry Potter");
}
