
int x;
int y;

void setup(){
  size(600,600);


}


void draw(){
  
  x = int(random(0, 600));
  y = int(random(0, 600));
  
  

  if (x <= 300 && y <= 300) {
    fill(255, 0, 0);
  }
  else if (x >= 300 && y >= 300) {
    fill (0, 255, 0);
    
  }
  else if (x <= 300 && y >= 300){
    
    fill (0, 0, 255);
  }
  
  else {
    fill (134, 23, 230);
    
  }
  circle(x,y,20);
 

  
}
