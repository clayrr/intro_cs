
void setup(){
  size(400, 600);
  background(0);
}

void draw(){
  fill(134,230,134);
  hills();
  
  fill(233, 234, 32);
  samanthaTriangle();
  translate(-100, 0);
  samanthaTriangle();
  translate(-100, 0);
  samanthaTriangle();
  translate(-100, 0);
  samanthaTriangle(); 
}

void hills(){
  triangle(0, 600, 400, 600, 0, 400);
  triangle(0, 600, 400, 600, 600, 300);
  triangle(0, 600, 400, 600, 0, 500);
}

//i got this from samantha
void samanthaTriangle(){
 triangle(360, 850, 400, 770, 380, 450); 
}
