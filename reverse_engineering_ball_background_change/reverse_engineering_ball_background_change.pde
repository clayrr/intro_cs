int x = 0;
//x is where circle is
int k = 8;
//k is increase/decrease
int y = 0;
int j = 5;
int r = 0;
int g = 0;
int b = 0;


void setup()  {
  size(600,600);
}

void draw() {
  background(r, g, b);
  
  if (x == 0) {
    r = 180;
    g = 200;
    b = 255;
  } 
  if (x == 600) {
   r = 255;
   g = 150;
   b = 200;
  }
  
  if (y == 0) {
    r = 190;
   g = 190;
   b = 225;
  }
  
  if (y == 600){
   r = 235;
   g = 110;
   b = 240;

  }
  
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
