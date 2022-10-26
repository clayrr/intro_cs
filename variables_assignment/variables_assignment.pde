int number = 0;
int x = 0;
int y = 1000;

void setup() {
  size(1000, 1000);
}

void draw(){
  background(100); 

  square(x, 0, 120);
  x = x + 1;
  
  circle(100, y, 100);
  y = y - 1; // 1 is speed of increase
  
}
