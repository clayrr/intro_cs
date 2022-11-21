int x = 0;
int r = 0;
int y = 0;
int z = 20;
boolean variable = true;

 void setup(){
  size(1200, 600);
   
 }
 
 
void draw(){
 
  background(184, 220, 222);

  fill(255);
  

  push();
  translate(500, 50);
  
  rotate(radians(r));
  if (variable == true ) {
    r = r + 1;
    
    if (r == 150) {
     variable = false; 
    }
  }

  if (variable == false) {
    r = r - 1;
   
    
    if (r == 0) {
     variable = true; 
    }
  }
  
  
  
  stroke(255);
  
  
  
  //legs
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
  

  //head

  ellipse(350, y, 250, 150);

  //mouth
  stroke(207, 54, 54);
  rect(325, z, 50, 20);

  //nose
  strokeWeight(2);
  stroke(22, 24, 81);
  fill(130, 213, 242);
  rect(350, y, 10, 10);

  //eyes
  noFill();
  circle(300, y, 50);
  circle(400, y, 50);
 
  //pupils

 
  fill (0, 0, 255);
  circle(300, y, 25);
  circle(400, y, 25); 
  
  if (y < 600){
  y = y + 1;
  }
  else{
   y = 0; 
  }
  
  if (z < 600){
  z = z + 1;
  }
  else{
   z = 0; 
  }

}
