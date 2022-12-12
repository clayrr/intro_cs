String userChoice = "Not Chosen";
String computerChoice;
int rand;
int draw;
int compWin;
int userWin;

void setup() {
  size(700, 700);
  textSize(25);
}


void draw() {
  background(122);



  fill (255);

  if (userChoice == "Rock") {
    fill(234, 12, 131);
  }
  rect(width / 3 - 50, 100, 100, 50); //rock

  fill (255);

  if (userChoice == "Paper") {
    fill(34, 42, 134);
  }
  rect(width / 3 +100, 100, 100, 50); // paper
  fill(255);

  if (userChoice == "Scissors") {
    fill (32, 142, 13);
  }
  rect(width / 3 + 250, 100, 100, 50); //scissors

  fill(0);
  text("Rock", width / 3 - 50, 130);
  text("Paper", width / 3 +100, 130);
  text("Scissors", width / 3 + 250, 130);


  text("Computer: " + computerChoice, 200, 350);
  
  if (userChoice == "Rock" && computerChoice == "Rock" || userChoice == "Paper" && computerChoice == "Paper"|| userChoice == "Scissors" && computerChoice == "Scissors") {
    text("Result: You Draw", 350, 500);

    
  } else if (userChoice == "Rock" && computerChoice == "Scissors" || userChoice == "Paper" && computerChoice == "Rock" || userChoice == "Scissors" && computerChoice == "Paper") {
    text("Result: You win", 350, 500);

  } else if (userChoice == "Not Chosen") {
    text("Result: Not Chosen", 350, 500);
  } else {
    text("Result: You lose", 350, 500);

  }
  
  text("Draw: " + draw, 80, 600);
  text("User Wins: " + userWin, 200, 600);
  text("Computer Wins: " + compWin, 350, 600);
  
  
}

void mousePressed() {

  if (mouseX > width / 3 - 50 && mouseX < width / 3 + 50 && mouseY > 100 && mouseY < 150) {
    userChoice = "Rock";
  }
  //right, top, left, bottom bound

  else if (mouseX > width / 3 +100 && mouseX <  width / 3 +200 && mouseY > 100 && mouseY < 150) {
    userChoice = "Paper";
  } else if (mouseX > width / 3 +250 && mouseX <  width / 3 +350 && mouseY > 100 && mouseY < 150) {
    userChoice = "Scissors";
  } else {
    userChoice = "Not Chosen";
  }

  rand = (int) random(3);
  if (rand == 0) {
    computerChoice = "Rock";
  } else if (rand == 1) {
    computerChoice = "Paper";
  } else if (rand == 2) {
    computerChoice = "Scissors";
  }
  
  if (userChoice == "Rock" && computerChoice == "Rock" || userChoice == "Paper" && computerChoice == "Paper"|| userChoice == "Scissors" && computerChoice == "Scissors") {
   
    draw = draw + 1;
    
  } else if (userChoice == "Rock" && computerChoice == "Scissors" || userChoice == "Paper" && computerChoice == "Rock" || userChoice == "Scissors" && computerChoice == "Paper") {

    userWin = userWin + 1;
  } else if (userChoice == "Not Chosen") {
 
  } else {
   
    compWin = compWin + 1;
  }
}
