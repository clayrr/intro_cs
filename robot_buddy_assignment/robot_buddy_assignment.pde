

void setup() {
  size(600,400);
  background(184, 220, 222);
}


void draw(){

//robot 1
  push();
  
  translate(60, 50);
  
  //legs
  fill(255);
  strokeWeight(5);
  stroke(179, 138, 191);
  triangle(300, 280, 280, 320, 320, 320);
  triangle(400, 280, 380, 320, 420, 320);
  
  //head
  ellipse(350, 210, 250, 150);
  
  //mouth
  stroke(207, 54, 54);
  rect(325, 225, 50, 20);

  //nose
  strokeWeight(2);
  stroke(22, 24, 81);
  fill(130, 213, 242);
  rect(350, 205, 10, 10);

  //eyes
  noFill();
  circle(300, 200, 50);
  circle(400, 200, 50);
 
  //pupils
  fill (0, 0, 255);
  circle(300, 200, 25);
  circle(400, 200, 25);  
  
  pop();
//robot 2
  push();
  translate(50, 185);
  scale(1.2);
  
  //eyes
  
  fill(255); 
  circle(50,50,70); 
  //pupil
  fill(0);
  circle(50,50,25);
  //white
  fill(255);
  circle(120,50,70);
  //pupil
  fill(0);
  circle(120,50,20);
  //nose
  triangle(150,80,67,68,69,75);
  //outline
  strokeWeight(4);
  stroke(0);
  //mouth
  fill(0);
  arc(90,150,100,100, radians(180), radians(360));
  
  pop();

}
