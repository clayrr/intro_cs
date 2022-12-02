
int x;
int y;

void setup(){
  size(500,500);


}


void draw(){
  
  x = int(random(0, 500));
  y = int(random(0, 500));
  
  

  if (x <= 250 && y < 250) {
    fill(255, 0, 0);
  }
  else if (x >= 250 && y > 250) {
    fill (0, 255, 0);
    
  }
  else if (x <= 250 && y > 250){
    
    fill (0, 0, 255);
  }
  
  else {
    fill (134, 23, 230);
    
  }
  circle(x,y,20);
 

  
}
