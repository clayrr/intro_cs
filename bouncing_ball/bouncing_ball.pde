int x = 0;
//x is where circle is
int k = 8;
//k is increase/decrease
int y = 0;
int j = 2;

void setup()  {
  size(600,600);
}

void draw() {
  background(100);
  circle(x, y, 50);
  
  x = x + k;
  y = y + j;
  
  if (x >= 600) {
    k = -k;
  }
  if (x <= 0) {
     k = -k;
     //y = y + j;
  } 
  
  if (y >= 600) {
   j = -j; 
  }
  
  if (y <= 0) {
    j = -j;
    //x = x + k;
  }
  
}
