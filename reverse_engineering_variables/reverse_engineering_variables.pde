
int x = 0;
int op = 0;
int sides = 500;
int y = 0;

void setup() {
  size(1000, 1000);
}

void draw(){
  background(0); 
  
  //big square
  fill(255);
  square(0, 0, sides);
  sides = sides - 40;
  
  //circle
  fill(255, 0, 0, op);
  circle (500, 500, 300);
  op = op + 1;
  
  //triangle
  fill(255);
  triangle(0, 0, 0, 100, x, 50);
  x = x + 1;
  
  //small square  
  square(550, y, 50);
  y = y + 1;
  
  if (y == height){
    y = 0;
  } 
  
}
