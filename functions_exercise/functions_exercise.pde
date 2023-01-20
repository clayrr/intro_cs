
void setup(){
  size(400, 600);
}


void draw(){
  
  
  background(25, 40, 250);
  translate(10, -10);
  hills();
  translate(20, -20);
  hills();
  translate(30, -31);
  hills();
  translate(40, -41);
  hills();
  
  
}


void hills(){
  triangle(0, 600, 400, 600, 0, 400);
  triangle(0, 600, 400, 600, 600, 300);
  triangle(0, 600, 400, 600, 0, 500);
  

  
}
